use actix_web::{dev::ServiceRequest, error, http::{self, header::HeaderValue}, web, Error};
use actix_web_httpauth::extractors::bearer::BearerAuth;
use casdoor_rs_sdk::AuthSdk;
use log::info;

pub async fn validator(
    req: ServiceRequest,
    credentials: Option<BearerAuth>,
) -> Result<ServiceRequest, (Error, ServiceRequest)> {

    match credentials {
        Some(token) => {
            let auth_sdk = req.app_data::<web::Data<AuthSdk>>().unwrap();
        
            let bearer_token = auth_sdk.parse_jwt_token(token.token());
        
            match bearer_token {
                Ok(_) => {
                    return Ok(req)
                },
                Err(_) => {
                    return Err((error::ErrorUnauthorized("bad bearer"), req));
                },
            }   
        },
        None => {
            info!("{}", "none");
            return Err((error::ErrorBadRequest("no bearer header"), req));
        },
    }
}