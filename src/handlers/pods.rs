use actix_web::{get, web, HttpResponse, Responder, Result};
use actix_protobuf::{ProtoBuf, ProtoBufResponseBuilder as _};
use k8s_openapi::api::core::v1::{Namespace, Pod};
use kube::{api::ListParams, Api, Client, ResourceExt};
use log::info;

mod pod_api;

#[get("/pods")]
async fn get_pods(kube_state: web::Data<Client>) -> impl Responder {
    let client = kube_state.get_ref();
    let nss: Api<Namespace> = Api::all(client.clone());

    for ns in nss.list(&Default::default()).await.unwrap() {
        let pods: Api<Pod> = Api::namespaced(client.clone(), ns.metadata.name.unwrap().as_str());
        for pod in pods.list(&Default::default()).await.unwrap() {
            info!("{}", pod.name_any());
        }
    }

    HttpResponse::Ok()
}