use actix_web::{get, web, HttpResponse, Responder, Result};
use k8s_openapi::api::core::v1::{Namespace, Pod};
use kube::{api::ListParams, Api, Client, ResourceExt};
use log::info;
use pod_api::get_all_pods;

mod pod_api;

#[get("/pods")]
async fn get_pods(kube_state: web::Data<Client>) -> Result<impl Responder> {
    let client = kube_state.get_ref();

    let pod_list = get_all_pods(client).await;

    Ok(web::Json(pod_list))
}