use std::{env, process};

use actix_web::{middleware::Logger, App, HttpServer};
use actix_files as fs;
use log::{self, info};

// #[get("/")]
// async fn home() -> impl Responder {
//     HttpResponse::build(StatusCode::OK)
//         .content_type("text/html charset=utf-8")
//         .body(include_str!("../frontend/build/web/index.html"))
// }
mod handlers;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    env_logger::init_from_env(env_logger::Env::new().default_filter_or("info"));

    match env::var("DEV") {
        Ok(val) => {
            if val == "true" {
                info!("run dev server");

                HttpServer::new(|| App::new().wrap(Logger::default()).service(fs::Files::new("/", "./frontend/web/").index_file("index.html")))
                .bind(("127.0.0.1", 9000))?
                .run()
                .await
            } else {
                eprintln!("Problem parsing arguments");
                process::exit(1);
            }
        },
        Err(_) => {
            info!("Serve builed front");

            HttpServer::new(|| App::new().wrap(Logger::default()).service(fs::Files::new("/", "./frontend/build/web/").index_file("index.html")))
            .bind(("127.0.0.1", 9000))?
            .run()
            .await
        },
    }
}
