use std::env;
use actix_web::{http, middleware::{from_fn, Logger}, web::{self}, App, HttpServer};
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
    let client_id = "e953686f04e7055b698b";
    let client_secret = "ca1044147dd343beb3288a77effd39792c760056";
    let cert = r###"-----BEGIN CERTIFICATE-----
MIIE3TCCAsWgAwIBAgIDAeJAMA0GCSqGSIb3DQEBDQUAMCgxDjAMBgNVBAoTBWFk
bWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MTExNDIwNTUxOFoXDTQ0
MTExNDIwNTUxOFowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp
bHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC63Ku1UXjMiIcX
lVc0qAlEuhsyBVIf4F1fxoPmpzp3Uxam7+Julu4+nZk4BWWvoKjo9zbdXXaZkL8u
AA0muYiM4tXLzSj2CDwIXJ32nS1/b4evT69ds2dBEjMTwT3XJY/rk4rrWuCzSM8k
dnyx0qyqFi0LrK/ToGBjpezwuUFqRl2V9vxESEK1mIMMwa40S08OjB6Xy82W7M2V
sROmNsTBTljtVjL6biexZNUXB6OEOZ6p1MYw18yhzSzyiitag8736zMst6b0Ibak
P8HDMxEMN2ywyPmH3CHXXcYusm8zYpU17qMcqUWtW9AcsIBTjODptaWkm41DqJCl
/Iuk4d3BCTqWANhBGSz7zW8/j3NqmjrgLhjZhn5lqTXOBNkHqFqHLYvfn2lLAe/R
KnxAyhYJeNFlx0FcV7gtR4f2BMV5ZBAHKVDEAG4TQpxOWm1oOzrOK8ApianAXhZa
+VDQThCdE3WY+y1kSNVd/dqfkufHqxjAoA4bpfgckWrHyJNG0vI51fZafZ+eXFz8
zE0EWcYFLcMzxvJ5VzlMJg2XBwTLc2E/3AIcjRmnGbvGF0ZdmmcJN06z/E0dUQwj
hKkGVTHUNXqI+OMFnmlo1bTiGx5swcVtfYQa6FSGHkinkkQqOe4opqrdwtzuXnPf
fQhKw9CEHOP2WZvYWnhXGDWBKMhFSwIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G
CSqGSIb3DQEBDQUAA4ICAQAJ9Wfl1Te6BBwrxm4t7fRoPipGJXMVf2sfgLOq3rav
zO11Bd+U9weOMH+rxV73hVh55RFlp8WRM4InLOKCkJOW1VcRm6DZ0f0aT82VIA+l
JuzqJ2JX5puT/h8N4iYykuqZl4VRUBPWkdKZWrQzRbfVuAs+xrIu/4qkD2KASRNb
iLsJYvvf8ogRZj+82nm+FVxo4DSqHbHsAxpi4zNTOPvEN0CxDaN3fndmmoIc1XzJ
FkyB0wQ+ijZIhqVxObjBCQFL1TRcvZ2dwJqY41Y01Nhl2/K1Pg28J/dsQFvB5JFi
2vvLxA5rTo1eh/9KMqom2RUOnFNuqySJWqtY/Wpm0KSetHNk/nxnDX2WFpxFjCaQ
PH4WHwlGz+/Fd0VXGhSs3Wg/a6mteCwdccPcbf9xliIbYas13RwMYxeGkgEHHCm9
KLiok2x222c3DsQstMaPVY1qXd+upF9WhuXEPm2GHVlxtCDqnu1w+DeuT7qeBLVK
flRimk4YRRUXfPCwlG+AqOGUC0rqjfSzXYXNDagf7duLIZkD+Wd6afUS4Q+NSkGT
gisw82sQ2c93X5QqX165I8GAbI/zs+hloO/oF6WZ5DWwtiGBSbwZwwN5/3nGg6fp
296D8V/VyRcL6yVpyKG3KjFrtYGojoHWoNS4DUAIxTKnKgZ4gxSk5dMUBO3xGEnt
8g==-----END CERTIFICATE-----"###;
    let org_name = "Kubernetes";
    let app = CasdorConfig::new("http://localhost:8000", client_id, client_secret, cert, org_name, Some("Cluster".to_owned())).into_sdk();
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
