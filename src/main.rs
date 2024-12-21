use std::{io::Result, process};

// TODO: Mb add config?
#[actix_web::main]
async fn main() -> Result<()> {
    #[cfg(not(target_os = "windows"))]
    let client = kubesman::kube_client().await;
    
    match client {
        Ok(client_kube) => {
            kubesman::run_backend(client_kube).await
        },
        Err(err) => {
            eprintln!("{}", err);
            process::exit(1);
        },
    }
}
