use actix_web::{get, web, HttpResponse, ResponseError};
use k8s_rs_pb::api::apps::v1::StatefulSetList;
use kube::Client;
use protobuf::Message;
use statefulsets::get_all_states;

mod statefulsets;

#[get("/statefulsets")]
async fn get_all_deploys(kube_state: web::Data<Client>) -> HttpResponse {
    let statefuls = get_all_states(&kube_state).await;

    match statefuls {
        Ok(state_list) => {
            match StatefulSetList::write_to_bytes(&state_list) {
                Ok(answer_vec) => {
                    HttpResponse::Ok().content_type("application/protobuf").body(answer_vec)
                },
                Err(e) => {
                    HttpResponse::BadGateway().body(e.to_string())
                },
            }
        },
        Err(e) => {
            e.error_response()
        },
    }
}