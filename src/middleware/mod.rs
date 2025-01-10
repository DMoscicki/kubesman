use actix_web::{dev::ServiceRequest, error, web, Error};
use actix_web_httpauth::extractors::bearer::BearerAuth;
use casdoor_sdk_rust::{AuthSdk, TokenIntrospectionResponse};
use log::{error, info};

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

                    let flag = auth_sdk
                        .introspect_access_token(token.token().to_string())
                        .await
                        .unwrap();
                    
                    parse_flag(flag.active(), req)
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

fn parse_flag(flag: bool, req: ServiceRequest) -> Result<ServiceRequest, (Error, ServiceRequest)> {
    if flag {
        Ok(req)
    } else {
        Err((error::ErrorUnauthorized("need refresh_token"), req))
    }
}
