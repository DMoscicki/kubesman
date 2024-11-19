use std::env;
use actix_web::{http, middleware::Logger, web::{self}, App, HttpServer};
use actix_files as fs;
use auth::validator;
use handlers::pods;
use log::info;
use kube::{config::KubeConfigOptions, Client, Config, Error};
use actix_cors::Cors;
use casdoor_rs_sdk::{self, Config as CasdorConfig, AuthSdk};
use actix_web_httpauth::middleware::HttpAuthentication;

mod handlers;
mod auth;

fn init_casdoor() -> AuthSdk {
    dotenvy::from_path("./dev.env").unwrap();

    let client_id = env::var("CASDOOR_CLIENT_ID").unwrap();
    let client_secret = env::var("CASDOOR_CLIENT_SECRET").unwrap();
    let cert = r###"-----BEGIN CERTIFICATE-----
MIIE3TCCAsWgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCgxDjAMBgNVBAoTBWFk
bWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MTExNTIxMjAyNVoXDTQ0
MTExNTIxMjAyNVowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp
bHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC/qEwuX5meV/40
rNXnd5HRPEnbBQqaLU6QerEWRZjRCgGZGtVhp1vYpVSyRn4hfKtfu/YH8XweeoW/
TR4VLdHNzkK2P+Z3nmHSYL7JNjjIFszgbS1mNLnMf3zFKi1veLcH5K29ITckXoST
y2fnCysN5pMpjAhbTgUTNLaW2FyqPv88r4nc8sb0TKXVVMO7UcgKZHXVxI1WD+y0
uJgWdj7nsZnaRRYWQIMKG7nRhvqgEKTFrD+GD4weMUaS74rL6lfqLADnGihY/vuk
Z72v3hEe0hsIo4HOsKV8AeEd8knHq2veoDa4IRQPqHcylpFENJvVGYwXcPvtiyZx
od9nvwaYJbpLLvA2pHLpdAGZgYvsUj8VuzNzXx+k7NIWyqd9dOyFAHRq/qKzuWJq
H1UdZ9dwY/O+CenQUN0kf2We+s+a298eAqkY+CIK5h6yQE3FMzMgZzd13GjM11x8
6BCwU/5GN8cc0lJF6yl8wXszfrc2N7ncsmQEkpX7byES0LNXC1G3zxI9ML2590rn
IpcJhNEvFO5tDGhfNzQc/jbnv+eI1Xx6WOGrYIdvrRySBp8Od8xkbtW90SrbykK3
XbySZgQu8oVaCRFFol6m2VOyCHvtB6RhspFmqdQV2wY3pkDmwGDQDtYxPg39L4zp
q8QHAYaXPjI66q2YIj6Nd0CTAUR8HQIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G
CSqGSIb3DQEBCwUAA4ICAQBCWnbqRoPh9HsX07Ut+zt22YcpbOkht6B6VFY9A97M
FrxD6v3WIsE01Hv+VeLBUyLTOH/6m8FuFpzDg3HdHcxwI3AMNrlMug7sEhNyUCw4
+Nwi2bBvKZfewzOyXh7XRu8MALew32qFcmAPp/RDRDXOIcNqZH1N0D/fi7SRLcTU
yKcPynkuMXd4xO25rRjp/OencaSNK9a65XaCYeG+FBPtEEv73sPXZ1AWP335O1FV
vwtZ5Z8+x2ciQie+ItjV8RduGgNiqynXYyrUVWfHz9w+Yb36kzqFGSTpp0BgkHvh
N+tJrsc+ZbkDXWO1VB2aoi0ko31Pjj3gIxOj5BS3HE/CCh2L5v+ClBgI7YWEQNKT
uBU6jJ7uz3QDbYVf0hPE9oA7NsxBzKW3Y2UXVg92kcWJmjotH3lYUiTViNnuPRQB
/cyzyHe/LaxFkocNLLdXlqq5Tp1qFraXxdGpL2gCN1eGQIX7b9B60qzqPBcjtCk3
N4/+GkQ9bDO2koSlUPLsA5HtniR6L3BEUGBDfQ6YoArI88f31r9DImfLNwG5cmfx
LWp/r5XJsPHDh5t5t7xjHstQBWXs8KHRwIxFmjXMoWgEBETWZbPAv3EB7B0QuOe6
z0kFDSKl81Ioa+ek38Yrp+1Rx7wqtDBhQtiu6uyf6tF1knxTOMZPrf8sFBbSkTjk
DQ==-----END CERTIFICATE-----"###;
    let org_name = "Kubernetes";
    let app = CasdorConfig::new(env::var("CASDOOR_ENDPOINT").unwrap(), 
    client_id, 
    client_secret, cert, org_name, Some(env::var("CASDOOR_APPLICATION_NAME").unwrap().to_owned())).into_sdk();

    app.authn()
}

pub async fn kube_client() -> Result<Client, Error> {

    let options = KubeConfigOptions::default();

    let config = Config::from_kubeconfig(&options).await.expect("error to load kubeconfig");
    let client = Client::try_from(config);

    client
}

fn cors_project() -> Cors {
    let cors = Cors::default()
                        .max_age(3600)
                        .allowed_methods(vec!["GET", "POST", "OPTIONS"])
                        .allowed_header(http::header::ACCESS_CONTROL_ALLOW_ORIGIN)
                        .allow_any_origin()
                        .supports_credentials()
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
    HttpServer::new(move || {
        let auth = HttpAuthentication::with_fn(validator);
        let auth_sdk = init_casdoor();

        App::new()
            .service(pods::get_pods)
            .service(pods::get_pods_by_ns)
            .app_data(web::Data::new(client.clone()))
            .app_data(web::Data::new(auth_sdk))
            .wrap(auth)
            .wrap(cors_project())
            .wrap(Logger::default()).service(fs::Files::new("/", "./frontend/web/").index_file("index.html"))
    })
    .bind(("127.0.0.1", 8080))?
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
            .app_data(web::Data::new(client.clone()))
            .app_data(auth_sdk)
            .wrap(auth)
            .wrap(cors_project())
            .wrap(Logger::default()).service(fs::Files::new("/", "./frontend/build/web/").index_file("index.html"))
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

