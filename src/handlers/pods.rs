use actix_web::{get, web, Responder, Result};
use kube::Client;
use pod_api::{get_all_pods, get_pods_by_namespace};

mod pod_api;

#[get("/pods")]
async fn get_pods(kube_state: web::Data<Client>) -> Result<impl Responder> {
    let client = kube_state.get_ref();

    let pod_list = get_all_pods(client).await;

    Ok(web::Json(pod_list))
}

#[get("/pods/namespace/{ns}")]
async fn get_pods_by_ns(
    kube_state: web::Data<Client>,
    path: web::Path<String>,
) -> Result<impl Responder> {
    let ns = path.into_inner();

    let client = kube_state.get_ref();

    let pod_list = get_pods_by_namespace(client, &ns).await;

    Ok(web::Json(pod_list))
}
