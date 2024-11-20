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
bWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MTExNzA4MDY1NFoXDTQ0
MTExNzA4MDY1NFowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp
bHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCsiHXaeWqtXlCg
4IpvaE3gkpxqnrT+Zq0xJsm7ox/WespIIGUTqkD0TSJx4tLOlR5ApO4eMLayUptR
E96svCq6R1pq294KiwIzEYIiexMr6UBtI6Xtw5epRHBawe36wRotuOBNb6RnydEm
CHXqgjedVddLmxNa1Cy6ka1K9LOlzhS+89fqO9c37aAuaoBOvhybBYiN86XNmysj
OCtTD3v9AY0VZ00p3a450g5GGOpGFc/axS3Enbw6d/8dCBN9pOG2VNgJo9SB1v+D
HCftpeCrR9x5uwY6vgOgQ2zhUq5lVGEbOEJTfH8meATZITpCk2rPplnQrKSzEoa+
O8csoMQU5GMruQYs4icsnsYnKsEZvwAfiEuXtaUSYl3qb2RqCQK0hUdKzaZSoyJP
LSoyvaOJGCKEBaolEZICPK73zyjOLbCQCLcc+E944QgUVG7kA+ZawI9/RoHr9YDB
u/YprjSzkdBkiU6+lUe5cgpjOR24zWlOhEs/8nceRzlFGdekP8zruS2wvlKZOpAG
G8uWlKZ3KsfdmA6d2RiFhS2aIZQzPDfDijSHm8HWoRfwY7xEJsbtROI9ENoIfxSg
FDQzZ0X/aIhb/UCZdsBzJ4SUnchoN8Bwvk+hPaU1+YPLszzPaUv9YR9ZJawCUh1u
2jtvWxozvDHgDBCVFgd39KeagCkCpQIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G
CSqGSIb3DQEBCwUAA4ICAQBnFSNsKCBf19lbwCRjbZJAH7aKhGcnEK/2pmp9/SAZ
khxQ/FXYqfuB1RwU2T64pu9+AekV6bQy4Am/AxG3CsWlLfCYEvSK9szGkyrNEvny
+ONG49bvBeLwWuaJK5gCK/5hVaME0LeEGeC90pIC39r4DmNQBZD7/6uWdY1HCcTB
V8Ti3rmw/MUFQpDv1xgFQkzRt7tm5WKVEQWPlHaBrXLc6qKspaG8iKuUfgU906m7
ZC+PRLE739YgiwLoTnVotqGdX557WvZ3qLUrZprwlIP5NgVovOkl2fSV45uyaSpE
oEvz3KP0S6HEYLcgqH6slv+ouz3a0HIvwv8k9WHd3GnDRHW6fMLBINkzY88dclfY
GW7Gt5Bxm+uW8vQy6s1NvVl6KIwufpc6BYIgSnkhkZ2xVkkjnHSi8PfmQCp8s5hU
gusrAFlsVe9vEJWvGwGzCpHhhoI0b06Phmv+YcpO3bg1uXyFGD13JcSEo5JNTSKV
wgBZaWQEAy/VgTq6UsGxKs/xpPIAyMZyi2t+H0WfIgEReWwgTlvnk94GoM7JvZFh
QF1ygmuHu2t29fCEnIDXlbL7+iiBNEUm0nue76geKMY6M5TVIEGUWBtwkLZTWY2k
m9juBMWegkgnehC5vgZi4ZWJGG/mFZZoe+NebyheYLvAHq4IH4Oc65UD0Dc/apH4
lw==-----END CERTIFICATE-----"###;
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
