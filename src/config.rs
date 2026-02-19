use std::env;

#[derive(Debug, Clone)]
pub struct Config {
    pub database_url: String,
    pub port: u16,
    pub jwt_secret: String,
}

impl Config {
    pub fn from_env() -> Self {
        let database_url = env::var("DATABASE_URL")
            .expect("DATABASE_URL must be set");

        let port = env::var("API_PORT")
            .unwrap_or_else(|_| "8080".to_string())
            .parse::<u16>()
            .expect("API_PORT must be a valid port number");

        let jwt_secret = env::var("JWT_SECRET")
            .expect("JWT_SECRET must be set");

        Self {
            database_url,
            port,
            jwt_secret,
        }
    }
}
