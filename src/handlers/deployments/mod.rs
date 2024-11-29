use actix_web::{get, web, HttpResponse, ResponseError};
use deploy_kube::get_all_deployments;
use k8s_rs_pb::api::apps::v1::DeploymentList;
use kube::Client;
use protobuf::Message;

mod deploy_kube;

#[get("/deployments")]
async fn get_all_deploys(kube_state: web::Data<Client>) -> HttpResponse {
    let client = kube_state.get_ref();

    let list_deploy = get_all_deployments(client.clone()).await;

    match list_deploy {
        Ok(dpl) => {
            match DeploymentList::write_to_bytes(&dpl) {
                Ok(dplst) => {
                    return HttpResponse::Ok().content_type("application/protobuf").body(dplst)
                },
                Err(err) => {
                    return  HttpResponse::BadGateway().body(err.to_string());
                },
            }
        },
        Err(e) => {
            e.error_response()
        },
    }
}