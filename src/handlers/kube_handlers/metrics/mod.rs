use actix_web::{get, web, HttpResponse};
use k8s_rs_pb::metrics::pkg::apis::metrics::v1beta1::{NodeMetricsList, PodMetricsList};
use kube::Client;
use protobuf::Message;

mod pods;
mod nodes;
mod custom_api;

#[get("/metrics/pods")]
pub async fn get_metrics_pod(kube_state: web::Data<Client>) -> HttpResponse {
    let res = pods::get_metrics(&kube_state).await;

    tracing::info!("{:#?}", res);

    match res {
        Ok(val) => {
            match PodMetricsList::write_to_bytes(&val) {
                Ok(buf) => HttpResponse::Ok().content_type("application/protobuf").body(buf),
                Err(e) => {
                    tracing::error!("{}", e.to_string());
                    HttpResponse::BadGateway().body(e.to_string())
                },
            }
        },
        Err(e) => HttpResponse::BadRequest().body(e.to_string()),
    }
}

#[get("/metrics/nodes")]
pub async fn get_metrics_nodes(kube_state: web::Data<Client>) -> HttpResponse {
    let res = nodes::get_metrics(&kube_state).await;

    match res {
        Ok(v) => {
            match NodeMetricsList::write_to_bytes(&v) {
                Ok(buf) => HttpResponse::Ok().content_type("application/protobuf").body(buf),
                Err(err) => HttpResponse::BadGateway().body(err.to_string())
            }
        },
        Err(err) => HttpResponse::BadRequest().body(err.to_string())
    }
}