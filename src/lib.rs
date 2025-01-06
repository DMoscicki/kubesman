use actix_cors::Cors;
use actix_files as fs;
use actix_web::{
    http,
    middleware::Logger,
    web::{self},
    App, HttpServer,
};
use actix_web_httpauth::middleware::HttpAuthentication;
use casdoor_rs_sdk::{self, AuthSdk, Config as CasdorConfig};
use handlers::kube_handlers::{configmaps, deployments, pods, secrets, statefulsets};
use kube::{Client, Config, Error};
use log::info;
use middleware::validator;
use std::env;

mod handlers;
mod middleware;
mod tokens;

pub async fn run_backend(client: Client) -> std::io::Result<()> {
    env_logger::init_from_env(env_logger::Env::new().default_filter_or("info"));

    match env::var("DEV") {
        Ok(val) => {
            if val == "true" {
                info!("Serve dev front");
                serve_dev(client).await
            } else {
                info!("Serve builed front");
                serve_build(client).await
            }
        }
        Err(_) => {
            info!("Production mode");
            production_mod(client).await
        }
    }
}

// TODO: make more readable
async fn serve_dev(client: Client) -> std::io::Result<()> {
    HttpServer::new(move || {
        let auth = HttpAuthentication::with_fn(validator);
        let auth_sdk = init_casdoor();

        App::new()
            .service(pods::get_pods)
            .service(pods::get_pods_by_ns)
            .service(deployments::get_all_deploys)
            .service(statefulsets::get_all_deploys)
            .service(secrets::get_secrets)
            .service(configmaps::get_configmaps)
            .service(handlers::casdoor::refresh_token)
            .service(handlers::casdoor::logout)
            // .service(handlers::casdoor::get_signin_url)
            .app_data(web::Data::new(client.clone()))
            .app_data(web::Data::new(auth_sdk))
            .wrap(auth)
            .wrap(cors_project())
        // .wrap(Logger::default()).service(fs::Files::new("/", "./frontend/web/").index_file("index.html"))
    })
    .bind(("0.0.0.0", 8080))?
    .run()
    .await
}

async fn serve_build(client: Client) -> std::io::Result<()> {
    HttpServer::new(move || {
        let auth = HttpAuthentication::with_fn(validator);
        let auth_sdk = init_casdoor();

        App::new()
            .service(pods::get_pods)
            .service(pods::get_pods_by_ns)
            .service(deployments::get_all_deploys)
            .service(handlers::casdoor::refresh_token)
            .service(handlers::casdoor::logout)
            .app_data(web::Data::new(client.clone()))
            .app_data(auth_sdk)
            .wrap(auth)
            .wrap(cors_project())
            .wrap(Logger::default())
            .service(fs::Files::new("/", "./frontend/build/web/").index_file("index.html"))
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}

async fn production_mod(client: Client) -> std::io::Result<()> {
    let port: u16 = match env::var("PORT") {
        Ok(value) => value.parse::<u16>().unwrap(),
        Err(_) => "9000".parse::<u16>().unwrap(),
    };

    HttpServer::new(move || {
        let auth = HttpAuthentication::with_fn(validator);
        let auth_sdk = init_casdoor();

        App::new()
            .service(pods::get_pods_by_ns)
            .service(pods::get_pods_by_ns)
            .service(deployments::get_all_deploys)
            .service(handlers::casdoor::refresh_token)
            .app_data(web::Data::new(client.clone()))
            .app_data(web::Data::new(auth_sdk))
            .wrap(auth)
            .wrap(cors_project())
            .wrap(Logger::default())
    })
    .bind(("0.0.0.0", port))?
    .run()
    .await
}

fn init_casdoor() -> AuthSdk {
    dotenvy::from_path("./dev.env").unwrap();

    let app = CasdorConfig::from_toml("./casdoor.dev.toml").unwrap();
    app.into_sdk().authn()
}

pub async fn kube_client() -> Result<Client, Error> {
    let config = Config::infer().await.unwrap();

    Client::try_from(config)
}

fn cors_project() -> Cors {
    Cors::default()
        .max_age(3600)
        .allowed_methods(vec!["GET", "POST", "OPTIONS"])
        .allowed_header(http::header::ACCESS_CONTROL_ALLOW_ORIGIN)
        .allow_any_origin()
        .supports_credentials()
        .allowed_headers(vec![http::header::AUTHORIZATION, http::header::ACCEPT])
}
