use actix_web::{dev::ServiceRequest, error, web, Error};
use actix_web_httpauth::extractors::bearer::BearerAuth;
use casdoor_rs_sdk::AuthSdk;
use log::{info, error};

pub async fn validator(
    req: ServiceRequest,
    credentials: Option<BearerAuth>,
) -> Result<ServiceRequest, (Error, ServiceRequest)> {

    match credentials {
        Some(token) => {
            let auth_sdk = req.app_data::<web::Data<AuthSdk>>().unwrap();
        
            //only 256
            let bearer_token = auth_sdk.parse_jwt_token(token.token());
        
            match bearer_token {
                Ok(tk) => {
                    info!("request from: {}", tk.user.display_name);
                    return Ok(req)
                },
                Err(e) => {
                    error!("catch error: {}", e);
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