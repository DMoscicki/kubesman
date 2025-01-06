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

            let bearer_token = auth_sdk.parse_jwt_token(token.token());

            match bearer_token {
                Ok(tk) => {
                    info!("request from: {}", tk.user.display_name);
                    Ok(req)
                }
                Err(e) => {
                    error!("catch error: {}", e);
                    
                    Err((error::ErrorUnauthorized("bad bearer"), req))
                }
            }
        }
        None => {
            info!("{}", "no token");

            Err((error::ErrorBadRequest("request is not valid"), req))
        }
    }
}
