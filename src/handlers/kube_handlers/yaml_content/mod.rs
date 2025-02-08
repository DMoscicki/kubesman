use actix_web::{
    post,
    web::{self, Bytes},
    HttpResponse,
};
use kube::Client;
use resources::KubeObjectType;

mod resources;

#[post("/yaml/apply")]
pub async fn put_files(
    bytes: Bytes,
    kube_state: web::Data<Client>,
) -> HttpResponse {

    if bytes.is_empty() {
        return HttpResponse::BadRequest().body("empty body");
    }

    let obj_kube = KubeObjectType::new(kube_state.get_ref().clone(), bytes.to_vec());

    match obj_kube.apply().await {
        Ok(_) => HttpResponse::Ok().body("ok"),
        Err(e) => HttpResponse::BadRequest().body(e.to_string()),
    }
}