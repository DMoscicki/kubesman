use actix_web::{dev::ServiceRequest, web, Responder};
use actix_web_httpauth::extractors::bearer::BearerAuth;


pub fn validator(
    req: ServiceRequest,
    credentials: Option<BearerAuth>,
) -> Result<ServiceRequest, impl Responder> {
    let Some(credentials) = credentials else {
        return Err(web::Redirect::to("localhost:8000"));
    };

    if credentials.token().contains("x") {
        return Err(web::Redirect::to("localhost:8000"));
    }



    Ok(req)
}