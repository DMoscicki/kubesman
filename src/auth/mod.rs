use actix_web::{body::MessageBody, dev::{ServiceRequest, ServiceResponse}, error, middleware::Next, web, Error, HttpMessage, HttpResponse};
use actix_web_httpauth::extractors::bearer::BearerAuth;
use casdoor_rs_sdk::AuthSdk;
use log::info;


// pub async fn my_middleware(
//     req: ServiceRequest,
//     next: Next<impl MessageBody>,
// ) -> Result<ServiceResponse<impl MessageBody>, Error> {
//     // pre-processing
//     // let f = next.call(req).await;

//     // info!("{:#?}", f.unwrap().request());
    
//     info!("{:#?}", req.headers());

//     let header = req.headers();

//     match header.get("authorization") {
//         Some(_) => todo!(),
//         None => {
//             return Ok(req.into_response(
//                 HttpResponse::MovedPermanently()
//                 .insert_header((actix_web::http::header::LOCATION, "http://localhost:8000"))
//                 .finish()
//                 .map_into_boxed_body()
//             ));
//         },
//     }

//     // Ok(req.into_response(
//     //     HttpResponse::Ok().finish()
//     // ))
// }

pub async fn validator(
    req: ServiceRequest,
    credentials: Option<BearerAuth>,
) -> Result<ServiceRequest, (Error, ServiceRequest)> {
    // let Some(credentials) = credentials else {
    //     web::Redirect::to("localhost:8000");
    //     // return Err((error::ErrorBadRequest("no bearer header"), req));
    // };

    info!("request to middleware: {:#?}", req.head().headers);

    match credentials {
        Some(token) => {
            if token.token().contains("x") {
                info!("{}", "contain x");
                // web::Redirect::to("localhost:8000");
                return Err((error::ErrorBadRequest("contains x"), req));
            }
        
            let auth_sdk = req.app_data::<AuthSdk>().unwrap();
        
            let bearer_token = auth_sdk.parse_jwt_token(token.token());
        
            match bearer_token {
                Ok(_) => {
                    info!("{}", "its okey");
                    return Ok(req)
                },
                Err(_) => {
                    info!("tyt");
                    return Err((error::ErrorUnauthorized("bad bearer"), req));
                },
            }
        },
        None => {
            // web::Redirect::to("http://localhost:8000");
            info!("{}", "none");
            return Err((error::ErrorBadRequest("no bearer header"), req));
        },
    }
}