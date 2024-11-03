use std::env;
use actix_web::{middleware::Logger, http, web::{self}, App, HttpServer};
use actix_files as fs;
use handlers::pods;
use log::info;
use kube::{config::KubeConfigOptions, Client, Config, Error};
use actix_cors::Cors;

mod handlers;
mod auth;

// add casdoor init conn

pub async fn kube_client() -> Result<Client, Error> {

    let options = KubeConfigOptions::default();

    let config = Config::from_kubeconfig(&options).await.expect("error to load kubeconfig");
    let client = Client::try_from(config);

    client
}

fn cors_project() -> Cors {
    let cors = Cors::default()
                        .max_age(3600)
                        .allowed_methods(vec!["GET", "POST", "PATCH"])
                        .allowed_header(http::header::CONTENT_TYPE)
                        .allowed_headers(vec![http::header::AUTHORIZATION, http::header::ACCEPT]);
    cors
}

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
        },
        Err(_) => {
            info!("Production mode");
            production_mod(client).await
        },
    }
}

// TODO: make more readable
async fn serve_dev(client: Client) -> std::io::Result<()> {
    HttpServer::new(move || App::new()
    .service(pods::get_pods)
    .service(pods::get_pods_by_ns)
    .app_data(web::Data::new(client.clone()))
    .wrap(cors_project())
    .wrap(Logger::default()).service(fs::Files::new("/", "./frontend/web/").index_file("index.html")))
    .bind(("127.0.0.1", 9000))?
    .run()
    .await
}

async fn serve_build(client: Client) -> std::io::Result<()> {
    HttpServer::new(move || App::new()
    .service(pods::get_pods)
    .service(pods::get_pods_by_ns)
    .app_data(web::Data::new(client.clone()))
    .wrap(cors_project())
    .wrap(Logger::default()).service(fs::Files::new("/", "./frontend/build/web/").index_file("index.html")))
    .bind(("127.0.0.1", 9000))?
    .run()
    .await
}

async fn production_mod(client: Client) -> std::io::Result<()> {
    let port: u16 = match env::var("PORT") {
        Ok(value) => value.parse::<u16>().unwrap(),
        Err(_) => "9000".parse::<u16>().unwrap(),
    };

    HttpServer::new(move || App::new()
    .service(pods::get_pods_by_ns)
    .service(pods::get_pods_by_ns)
    .app_data(web::Data::new(client.clone()))
    .wrap(cors_project())
    .wrap(Logger::default()))
    .bind(("0.0.0.0", port))?
    .run()
    .await
}
