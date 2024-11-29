use actix_web::{get, http::StatusCode, web, HttpResponse, Responder, Result};
use kube::Client;
use ns_kube::{create_ns, get_all_namespaces};

mod ns_kube;

#[get("/namespaces")]
async fn get_all_ns(kube_state: web::Data<Client>) -> Result<impl Responder> {
    let client = kube_state.get_ref();

    let namespaces = get_all_namespaces(client).await;

    Ok(web::Json(namespaces))
}

#[get("/namespaces/{name}")]
async fn create_namespace(kube_state: web::Data<Client>, param: web::Path<String>) -> HttpResponse {
    let client = kube_state.get_ref();
    let name = param.into_inner();

    match create_ns(client, &name).await {
        true => HttpResponse::Ok().status(StatusCode::OK).finish(),
        false => HttpResponse::BadRequest().status(StatusCode::BAD_REQUEST).finish(),
    }

}