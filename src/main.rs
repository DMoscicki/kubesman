use std::io::Result;
use kubesman;

// TODO: Mb add config?
#[actix_web::main]
async fn main() -> Result<()> {
    #[cfg(not(target_os = "windows"))]
    let client = kubesman::kube_client().await.unwrap();
    kubesman::run_backend(client).await
}
