use actix_web::{dev::ServiceRequest, error, web, Error};
use actix_web_httpauth::extractors::bearer::BearerAuth;
use casdoor_sdk_rust::{AuthSdk, TokenIntrospectionResponse};
use tracing::{error, info};

pub async fn validator(
    req: ServiceRequest,
    credentials: Option<BearerAuth>,
) -> Result<ServiceRequest, (Error, ServiceRequest)> {
    if parse_query(&req) {
        return Ok(req);
    }

    match credentials {
        Some(token) => {
            let auth_sdk = req.app_data::<web::Data<AuthSdk>>().unwrap();

            let bearer_token = auth_sdk.parse_jwt_token(token.token());

            match bearer_token {
                Ok(_) => {
                    // info!("request from: {}", tk.user.display_name);

                    // info!("{:#?}", tk);

                    // info!("{}", token.token().to_string());

                    let flag = auth_sdk
                        .introspect_access_token(token.token().to_string())
                        .await
                        .unwrap();

                    info!("flag {}", flag.active());

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

fn parse_query(req: &ServiceRequest) -> bool {
    info!("{}", req.path());
    
    if req.path().eq("/api/refresh_token") || req.path().eq("/api/logout") {
        true
    } else {
        false
    }
}

fn parse_flag(flag: bool, req: ServiceRequest) -> Result<ServiceRequest, (Error, ServiceRequest)> {
    if flag {
        Ok(req)
    } else {
        Err((error::ErrorUnauthorized("need refresh_token"), req))
    }
}
