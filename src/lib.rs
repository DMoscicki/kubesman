use std::env;

use actix_web::{middleware::Logger, web::{self, service}, App, HttpServer};
use actix_files as fs;
use handlers::pods;
use log::info;
use kube::{config::KubeConfigOptions, Client, Config, Error};

mod handlers;

pub async fn kube_client() -> Result<Client, Error> {

    let options = KubeConfigOptions::default();

    let config = Config::from_kubeconfig(&options).await.expect("error to load kubeconfig");
    let client = Client::try_from(config);

    client
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
    HttpServer::new(move || App::new().service(pods::get_pods)
    .app_data(web::Data::new(client.clone()))
    .wrap(Logger::default()).service(fs::Files::new("/", "./frontend/web/").index_file("index.html")))
    .bind(("127.0.0.1", 9000))?
    .run()
    .await
}

async fn serve_build(client: Client) -> std::io::Result<()> {
    HttpServer::new(move || App::new()
    .app_data(web::Data::new(client.clone()))
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
    .app_data(web::Data::new(client.clone()))
    .wrap(Logger::default()))
    .bind(("0.0.0.0", port))?
    .run()
    .await
}