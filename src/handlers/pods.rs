use actix_web::{body::BoxBody, get, http::header::{ContentEncoding, ContentType}, web, HttpResponse, Responder, Result};
use k8s_protos::api::core::v1::PodList;
use kube::Client;
use pod_api::{get_all_pods, get_pods_by_namespace};
use protobuf::Message;

mod pod_api;

#[get("/pods")]
async fn get_pods(kube_state: web::Data<Client>) -> HttpResponse {
    let client = kube_state.get_ref();

    let pod_list = get_all_pods(client).await;

    match pod_list {
        Ok(pdls) => {
            match PodList::write_to_bytes(&pdls) {
                Ok(pdls) => {
                    return HttpResponse::Ok().content_type("application/protobuf").body(pdls)
                },
                Err(err) => {
                    return  HttpResponse::BadGateway().body(err.to_string());
                },
            }
        },
        Err(_) => {
            return HttpResponse::BadRequest().finish()
        },
    }
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
