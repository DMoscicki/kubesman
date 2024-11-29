use std::env;
use actix_web::{http, middleware::Logger, web::{self}, App, HttpServer};
use actix_files as fs;
use auth::validator;
use handlers::{configmaps, deployments, pods, secrets, statefulsets};
use log::info;
use kube::{Client, Config, Error};
use actix_cors::Cors;
use casdoor_rs_sdk::{self, Config as CasdorConfig, AuthSdk};
use actix_web_httpauth::middleware::HttpAuthentication;

mod handlers;
mod auth;

fn init_casdoor() -> AuthSdk {
    dotenvy::from_path("./dev.env").unwrap();

    let client_id = env::var("CASDOOR_CLIENT_ID").unwrap();
    let client_secret = env::var("CASDOOR_CLIENT_SECRET").unwrap();
    let cert = r###"
-----BEGIN CERTIFICATE-----
MIIE3TCCAsWgAwIBAgIDAeJAMA0GCSqGSIb3DQEBDQUAMCgxDjAMBgNVBAoTBWFk
bWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MTEyNjIxMTgzOVoXDTQ0
MTEyNjIxMTgzOVowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp
bHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDJ3WejBKioE7nH
/zcf5qfMhXpiyOlkW3EceSgWnsMovOleRSypbSJISogC8RzyitYCqiCgPnL96Xov
swhJQ3+HShcxL8UHDR5aegIh+mM36lXeGEen7Q1W9D0kGlanc4jgRuj2Ok+43c1t
auoqZkMg+MdMgbyl39Bs16C/GV2Lmh4Pe31TRdIOAgLIX0CN+1BknVzvo4mjIF8O
aYrJztO6pnnBGmQXJR96PC3tv7heyZwGZeomL6xuvhqjqjleVxFYFQk6JHY/7L+u
1gSQnRfkJ2Q/ju+x8Oglc2/AaSuoICCfORoSRbrnKmXOXQIn9wEUlb2/WiENh796
N1NXMw43PTKpOPpPoi/GORO7kgT2Zd4/cyIhNnV8HaoA10z2GwLMz/+FlupUUiEI
CiDyn09q9PmT5rphqb60xy16+OGIsFHZIgZxlaWzBUV+ts+eZPQCbpqcxbU0QjqW
NS50PQaRIK+jH1p5MSvNSPHUxTBYjuTfmyVBr8EBg+xJX9SVEjJW7LLYwR6ZZGD7
xNeG4ew/i9icJRtDJ0jMgvrqeZPg7wnxmtabZZIHx+R+mea+PDAfJq7t8w7ftH7Q
pQ7no40i6DI5ONsDCn5LkaPVxGzjgt0aOlw90ixtdPlOFhu0a5IJcBGQEZftdNrS
aasV/G9P2WESM68MgcTDKH1v+XE2PwIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G
CSqGSIb3DQEBDQUAA4ICAQBhYxoH/yiX8dPe/+q4AtssuIr9fAD9mrcV7uKkwyo6
kK7FkQfFcviRJZVhbu5r3egH7AUn99KmnxeKTObQiwdml1xAFX65SALlY/fNWQ6K
JA7AUYw0iaLcaRDkDriHw33ZZtC3nhyjuZql3e3MeDX09iqjBGnngOb+FT9NdWET
OCW2A5I7gUSt2v6bNhbWRdzaYmUGCxboRFMjLeC9zEPQylejuwv7GKCJa+jXN2kp
CmmQCHlAMf9LZx6lymJ5lYOaLjqXouPE/taSeuA9fwh11NXb0BEx2+Duo/c88qOg
bbqR8/GmnHwb0fv9c2exCKDl7+11E72s/aF0z9VmV4LOwQYI0vhtPUqqGX4VOBmk
YbzxIC8/Ck0N3NlmvFf7WQa8IMQTYC8FtBsvuDZcGIhKa1JBUYjf1E649l4UcGWV
oKmYKLPex3xH+2WHuSZKvtS58bh71mUbAnwuBe19kBS+csWNkcck49reAe/H87d8
0eMAWOaCmY7lfNfZ/Xy+1MOshuUTujd49dgBZjfXMWUBaAAQy5I3h7eMJioQth48
3JhM4jendvx3xkgYZdesd6ThPB0Mmu7SvLO6Reb1PpnifQm6XpEfMPAjhI1M/cHW
oPIZICyzDrDEHJ/wKPyQ3fLXbCm+XvmVlsk+t3n/GKJjX7b5BTB8yGO78Dg2sJ6W
ug==
-----END CERTIFICATE-----
"###;
    let org_name = "Kubernetes";
    let app = CasdorConfig::new(env::var("CASDOOR_ENDPOINT").unwrap(), 
    client_id, 
    client_secret, cert, org_name, Some(env::var("CASDOOR_APPLICATION_NAME").unwrap().to_owned())).into_sdk();

    app.authn()
}

pub async fn kube_client() -> Result<Client, Error> {

    // let options = KubeConfigOptions::default();

    // let config = Config::from_kubeconfig(&options).await.expect("error to load kubeconfig");
    // let client = Client::try_from(config);

    let config = Config::infer().await.unwrap();

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
            .service(deployments::get_all_deploys)
            .service(statefulsets::get_all_deploys)
            .service(secrets::get_secrets)
            .service(configmaps::get_configmaps)
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
            .service(deployments::get_all_deploys)
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
