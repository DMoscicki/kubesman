use actix_web::{get, web, HttpResponse, ResponseError};
use k8s_rs_pb::api::core::v1::SecretList;
use kube::Client;
use protobuf::Message;
use secrets_kube::get_all_secrets;

mod secrets_kube;

#[get("/secrets")]
pub async fn get_secrets(kube_state: web::Data<Client>) -> HttpResponse {
    let sec_list = get_all_secrets(&kube_state).await;

    match sec_list {
        Ok(secret_list) => {
            match SecretList::write_to_bytes(&secret_list) {
                Ok(value) => {
                    HttpResponse::Ok().content_type("application/protobuf").body(value)
                },
                Err(e) => {
                    HttpResponse::BadGateway().body(e.to_string())
                },
            }
        }
        Err(e) => {
            e.error_response()
        }
    }
}