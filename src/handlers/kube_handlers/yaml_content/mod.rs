use actix_web::{
    post,
    web::{self, Bytes},
    HttpResponse,
};
use kube::Client;
use resources::KubeObjectType;

mod resources;

#[post("/yaml/apply")]
pub async fn apply_yaml(bytes: Bytes, kube_state: web::Data<Client>) -> HttpResponse {    
    if bytes.is_empty() {
        return HttpResponse::BadRequest().body("empty body");
    }

    let obj_kube = KubeObjectType::new(kube_state.get_ref().clone(), bytes.to_vec());

    match obj_kube.apply().await {
        Ok(_) => HttpResponse::Ok().body("ok"),
        Err(e) => HttpResponse::BadRequest().body(e.to_string()),
    }
}

#[post("/yaml/update")]
pub async fn update_yaml(bytes: Bytes, kube_state: web::Data<Client>) -> HttpResponse {
    if bytes.is_empty() {
        return HttpResponse::BadRequest().body("empty body");
    }

    let obj_kube = KubeObjectType::new(kube_state.get_ref().clone(), bytes.to_vec());

    match obj_kube.update().await {
        Ok(_) => HttpResponse::Ok().body("updated"),
        Err(e) => HttpResponse::BadRequest().body(e.to_string()),
    }
}