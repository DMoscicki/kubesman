use actix_web::{web, Responder, Result};
use deploy_api::get_all_deployments;
use kube::Client;

mod deploy_api;

async fn get_all_deploys(kube_state: web::Data<Client>) -> Result<impl Responder> {
    let client = kube_state.get_ref();

    let list_deploy = get_all_deployments(client.clone()).await;

    Ok(web::Json(list_deploy))
}