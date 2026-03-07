use std::env;

#[derive(Debug, Clone)]
pub struct Config {
    pub database_url: String,
    pub bind_address: std::net::IpAddr,
    pub port: u16,
    pub jwt_secret: String,
}

impl Config {
    pub fn from_env() -> Self {
        let database_url = env::var("DATABASE_URL").expect("DATABASE_URL must be set");

        let bind_address = env::var("BIND_ADDRESS")
            .unwrap_or_else(|_| "127.0.0.1".to_string())
            .parse::<std::net::IpAddr>()
            .expect("BIND_ADDRESS must be a valid IP address");

        let port = env::var("API_PORT")
            .unwrap_or_else(|_| "8080".to_string())
            .parse::<u16>()
            .expect("API_PORT must be a valid port number");

        let jwt_secret = env::var("JWT_SECRET").expect("JWT_SECRET must be set");

        Self {
            database_url,
            bind_address,
            port,
            jwt_secret,
        }
    }
}
