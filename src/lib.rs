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
    let client_id = "23c224b2ca49096e137a";
    let client_secret = "82cd7e0910cb7ad2474efbbde63f04ab80ccf2d8";
    let cert = r###"-----BEGIN CERTIFICATE-----
MIIE3TCCAsWgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCgxDjAMBgNVBAoTBWFk
bWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MTEwNTE3NTQxOFoXDTQ0
MTEwNTE3NTQxOFowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp
bHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC6AOEuygbcqAAP
IibuQgQ9FFGA1RjwGggBNJqWjB05MskqazVHyk+gY2o4w9TGupbpnEtbi+6ZJnpt
XySZbd/5EogH+gT4p1cqBt+XZdke6HfhMbjh5ChtytPcoMyjfNVGn1DDdH0TA2/K
HNwXu26SNFW770D+iJpolvKQlXJLDzmghDDchOlMWHyaLQxQZignuCd5EhVPM00t
RxN8oX0J9y9mtRJMFm1K07mixiTRybhycCeq50d/QXsaDT3OsRN8jFrDAh8VMOAv
Ycr5Fc4cDlAOE4IQfT7tev6BLPf6yFNaxJi17PDjFJrNOW+hCwH7b03Jn3l3jUq2
eWLv3RfL8vSVb6twa8KE/c7gX2ScrZlHJu8DGMsmjuJMQGgaBikO80s92aN8WH1U
gvES9jVcJJSjrqe8tdUtNGZckTAP3SnuTm0JpNj4KjeEKR46M5tyBqFsMhJV/skI
rKnS2ngMVq8KpEdANiV0Muc6b4mbdK1tBrP+1aO18SsolTbAC10pbtS2zRPFtFXR
+lbM4sggMDypJ1yzFZR8KE0b5nT+KlOQz+5kXKFD9+CPqR9+FYhAvd67fpMXZ7UD
4ZdgSsdMPy5D/drrB7UD62C7pc4Iee5Nv8D8UDSMxPjWsspAvVzP10A6/rdq4sTo
457nqvV4w7A4Sl6j7TakYjbQXmcP8QIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G
CSqGSIb3DQEBCwUAA4ICAQB/GXayQg7NXRLzOBt8gGsR3kTg831yADhzGEuBpJSn
Txcogqh5lPun1EpTtGfmse5HuWhzdk2A3q9CZuhu/mLWy7jWrIoKCLixdibXAu8a
SGhpZwWfJhVdM0eeln972HoxabLo2TRDUEK4TH5JOF+BV9tEUuUe3NBU0K1H8xZg
qT+oYvVgg9yRZrwEKVt64gqKqOBQyKDeBLWFI7k3X+AyfHdDzSdde17shlshsZkb
qTfAQwQhvST7eSBm/N8qYuTGL7D/tsW0TB6ikVBIogZPco+TIAnwxJDFK5plrwbA
hKdp0wJATqxbD+owLst9yi4udVk5i9p1EoK7ylxToA1kBlFqtXT5bAHfj65ziNmj
TbJQLk14vmCWHLkY3SBeWJnEgi7f8K5rtVIO7uKvtFKLVdO7Av7Xm/gphkAKlDyn
4EUQTpQh8rcM06c+6xoeIWzu5XhIhXrpSWq8LU4Ao3bDjgyoupS/zLukqu35e+M3
7GCMR+XZ+dLS367lahtzgO8sWokBkVF5TJCZUInVzk8zTAX2/2Y5MdTRLelFGt53
OVh+pguVpc6fygHXrrdFk8lbmVlAiQ2+V4vc1DH1jaTGOm+3D1OQuQNU7dC2j+Oh
Ull3jSbRC5YWknC8IL73l88fTOXCOWQ3GadpKd0pTZ8Z0wdy+TrAMzAUGEca8cwu
Ug==
-----END CERTIFICATE-----"###;
    let org_name = "Kubernetes";
    let app = CasdorConfig::new("http://localhost:8000", client_id, client_secret, cert, org_name, Some("Kubernetes".to_owned())).into_sdk();
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
