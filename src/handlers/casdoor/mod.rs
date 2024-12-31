use actix_web::{post, HttpResponse};
use actix_web::web::{Bytes, Data};
use casdoor_rs_sdk::{AuthSdk, SdkError, TokenResponse};
use flatbuffers::FlatBufferBuilder;
use log::info;
use crate::tokens::refresh_generated::refresh::root_as_refresh_response;
use crate::tokens::access_generated::access::{AccessResponse, AccessResponseArgs, finish_access_response_buffer};

// #[derive(Debug, Deserialize)]
// struct Code {
//     code: String
// }

#[post("/api/refresh_token")]
pub async fn refresh_token(bytes: Bytes, csd: Data<AuthSdk>) -> HttpResponse {
    let builder = FlatBufferBuilder::new();
    let new_token = update_token(&csd, bytes.as_ref()).await;

    match new_token {
        Ok(token_result) => {
            info!("{:#?}", token_result);
            let mut byter: Vec<u8> = Vec::new();
    
            make_access_token(builder, &mut byter, token_result).await;
        
            if !byter.is_empty() {
                HttpResponse::Ok().body(byter)
            } else {
                HttpResponse::BadRequest().body(byter)
            }
        },
        Err(e) => HttpResponse::BadRequest().body(e.inner.to_string()),
    }
}

// #[post("/api/get_oauth")]
// pub async fn get_oauth_token(code: web::Query<Code>, csd: Data<AuthSdk>) -> HttpResponse {
//     let builder = FlatBufferBuilder::new();

//     info!("{}", code.code);

//     let res = csd.get_oauth_token(code.code.as_str().to_string()).await;

//     match res {
//         Ok(value) => {
//             let mut buf: Vec<u8> = Vec::new();

//             make_access_token(builder, &mut buf, value).await;

//             if !buf.is_empty() {
//                 HttpResponse::Ok().body(buf)
//             } else {
//                 HttpResponse::BadRequest().body(buf)
//             }
//         },
//         Err(e) => {
//             error!("{}", e.inner.to_string());
//             HttpResponse::BadRequest().body(e.inner.to_string())
//         },
//     }
// }

async fn update_token(auth_sdk: &AuthSdk, tk: &[u8]) -> Result<impl TokenResponse, SdkError> {
    let req = root_as_refresh_response(tk).unwrap();
    let res = auth_sdk.refresh_oauth_token(req.refresh_token().unwrap().to_string()).await;
    match res {
        Ok(result) => Ok(result),
        Err(err) => Err(err),
    }
}

async fn make_access_token(
    mut builder: FlatBufferBuilder<'_>,
    dest: &mut Vec<u8>,
    meta: impl TokenResponse,
) {
    dest.clear();
    
    builder.reset();

    let duration = format!("{}", meta.expires_in().unwrap().as_secs());
    
    let args = AccessResponseArgs{
        access_token: Some(builder.create_string(meta.access_token().secret())),
        expires_in: Some(builder.create_string(&duration)),
        refresh_token: Some(builder.create_string(meta.refresh_token().unwrap().secret())),
        scope: Some(builder.create_string(meta.scopes().unwrap()[0].as_ref())),
        token_type: Some(builder.create_string(BasicTokenType::Bearer.as_ref())),
    };
    
    let access_offset = AccessResponse::create(&mut builder, &args);
    
    finish_access_response_buffer(&mut builder, access_offset);
    
    let finished_data = builder.finished_data();
    
    dest.extend_from_slice(finished_data);
}