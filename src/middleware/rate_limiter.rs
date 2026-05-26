use actix_web::{
    body::{BoxBody, MessageBody},
    dev::{Service, ServiceRequest, ServiceResponse, Transform},
    Error, HttpResponse,
};
use serde_json::json;
use std::{
    collections::HashMap,
    future::{ready, Ready},
    pin::Pin,
    sync::Arc,
    task::{Context, Poll},
    time::{Duration, Instant},
};
use tokio::sync::Mutex;
use tracing::warn;

/// Simple in-memory per-IP token-bucket rate limiter.
/// Good for single-process (NanoPi) setups.
#[derive(Clone)]
pub struct RateLimiter {
    max_requests: u32,
    window: Duration,
    store: Arc<Mutex<HashMap<String, TokenBucket>>>,
}

#[derive(Debug)]
struct TokenBucket {
    tokens: f64,
    last: Instant,
}

impl RateLimiter {
    /// max_requests per window (eg 60 per 60s)
    pub fn new(max_requests: u32, window: Duration) -> Self {
        Self {
            max_requests,
            window,
            store: Arc::new(Mutex::new(HashMap::new())),
        }
    }
}

impl<S, B> Transform<S, ServiceRequest> for RateLimiter
where
    S: Service<ServiceRequest, Response = ServiceResponse<B>, Error = Error> + 'static,
    B: MessageBody + 'static,
{
    type Response = ServiceResponse<BoxBody>;
    type Error = Error;
    type InitError = ();
    type Transform = RateLimiterMiddleware<S>;
    type Future = Ready<Result<Self::Transform, Self::InitError>>;

    fn new_transform(&self, service: S) -> Self::Future {
        ready(Ok(RateLimiterMiddleware {
            service: Arc::new(service),
            max_requests: self.max_requests,
            window: self.window,
            store: self.store.clone(),
        }))
    }
}

pub struct RateLimiterMiddleware<S> {
    service: Arc<S>,
    max_requests: u32,
    window: Duration,
    store: Arc<Mutex<HashMap<String, TokenBucket>>>,
}

impl<S, B> Service<ServiceRequest> for RateLimiterMiddleware<S>
where
    S: Service<ServiceRequest, Response = ServiceResponse<B>, Error = Error> + 'static,
    B: MessageBody + 'static,
{
    type Response = ServiceResponse<BoxBody>;
    type Error = Error;
    type Future =
        Pin<Box<dyn std::future::Future<Output = Result<Self::Response, Self::Error>> + 'static>>;

    fn poll_ready(&self, cx: &mut Context<'_>) -> Poll<Result<(), Self::Error>> {
        self.service.poll_ready(cx)
    }

    fn call(&self, req: ServiceRequest) -> Self::Future {
        let svc = self.service.clone();
        let store = self.store.clone();
        let max = self.max_requests;
        let window = self.window;

        Box::pin(async move {
            // identify client by real remote addr if available
            let client_key = req
                .connection_info()
                .realip_remote_addr()
                .map(|s| s.to_string())
                .unwrap_or_else(|| "unknown".to_string());

            let now = Instant::now();

            // update token bucket protected by async mutex
            {
                let mut map = store.lock().await;
                let bucket = map.entry(client_key.clone()).or_insert(TokenBucket {
                    tokens: max as f64,
                    last: now,
                });

                // refill tokens based on elapsed time
                let elapsed = now.duration_since(bucket.last).as_secs_f64();
                let window_secs = window.as_secs_f64().max(1.0);
                let rate = (max as f64) / window_secs;
                bucket.tokens = (bucket.tokens + elapsed * rate).min(max as f64);
                bucket.last = now;

                if bucket.tokens < 1.0 {
                    warn!("Rate limit exceeded for {}", client_key);
                    let resp = HttpResponse::TooManyRequests()
                        .append_header(("Retry-After", format!("{}", window.as_secs())))
                        .json(json!({ "error": "Too many requests" }));
                    return Ok(req.into_response(resp).map_into_boxed_body());
                }

                // consume a token
                bucket.tokens -= 1.0;
            } // release mutex

            // forward to service
            let res = svc.call(req).await?;
            Ok(res.map_into_boxed_body())
        })
    }
}
