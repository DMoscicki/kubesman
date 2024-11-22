use actix_web::{get, web, HttpResponse, ResponseError};
use configmaps::get_all_configmaps;
use k8s_rs_pb::api::core::v1::ConfigMapList;
use kube::Client;
use protobuf::Message;

mod configmaps;

#[get("/configmaps")]
pub async fn get_configmaps(kube_state: web::Data<Client>) -> HttpResponse {
    let configs = get_all_configmaps(&kube_state).await;

    match configs {
        Ok(val) => {
            match ConfigMapList::write_to_bytes(&val) {
                Ok(ans) => {
                    HttpResponse::Ok().content_type("application/protobuf").body(ans)
                },
                Err(e) => {
                    HttpResponse::BadGateway().body(e.to_string())
                },
            }
        },
        Err(e) => {
            e.error_response()
        }
    }
}