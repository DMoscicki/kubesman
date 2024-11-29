use actix_web::{get, web::{self}, HttpResponse, Responder, ResponseError, Result};
use k8s_rs_pb::api::core::v1::PodList;
use kube::Client;
use pod_kube::{get_all_pods, get_pods_by_namespace};
use protobuf::Message;

mod pod_kube;

#[get("/pods")]
async fn get_pods(kube_state: web::Data<Client>) -> HttpResponse {
    let pod_list = get_all_pods(&kube_state).await;

    match pod_list {
        Ok(pdls) => {
            match PodList::write_to_bytes(&pdls) {
                Ok(pdls) => {
                    HttpResponse::Ok().content_type("application/protobuf").body(pdls)
                },
                Err(err) => {
                    HttpResponse::BadGateway().body(err.to_string())
                },
            }
        },
        Err(e) => {
            e.error_response()
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
