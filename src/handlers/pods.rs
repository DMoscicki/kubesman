use actix_web::{get, HttpResponse};
use cluster_types::pods::pod::Pod;
use actix_protobuf::ProtoBuf;
mod pod_api;

// #[get("/pods")]
// async fn get_pods(msg: ProtoBuf<Pod>) -> Result<HttpResponse> {

// }