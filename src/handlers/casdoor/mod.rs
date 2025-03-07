use crate::tokens::access_generated::access::{
    finish_access_response_buffer, AccessResponse, AccessResponseArgs,
};
use crate::tokens::refresh_generated::refresh::root_as_refresh_response;
use actix_web::http::StatusCode;
use actix_web::web::{Bytes, Data};
use actix_web::{post, HttpResponse, HttpResponseBuilder};
use casdoor_sdk_rust::{AuthSdk, CasdoorTokenResponse, SdkError, TokenResponse};
use flatbuffers::FlatBufferBuilder;

// #[derive(Debug, Deserialize)]
// struct Code {
//     code: String,
// }

#[post("/api/refresh_token")]
pub async fn refresh_token(bytes: Bytes, csd: Data<AuthSdk>) -> HttpResponse {
    let builder = FlatBufferBuilder::new();
    let new_token = update_token(&csd, bytes.as_ref()).await;

    match new_token {
        Ok(token_result) => {
            let mut byter: Vec<u8> = Vec::new();

            make_access_token(builder, &mut byter, token_result).await;

            if !byter.is_empty() {
                HttpResponse::Ok().body(byter)
            } else {
                HttpResponse::BadRequest().body(byter)
            }
        }
        Err(e) => HttpResponse::BadRequest().body(e.inner.to_string()),
    }
}

#[post("/logout")]
pub async fn logout(csd: Data<AuthSdk>, bytes: Bytes) -> HttpResponse {
    let b = String::from_utf8(bytes.to_vec()).unwrap();

    let res = csd.logout(b.as_str(), "", "logout").await;

    match res {
        Ok(msg) => HttpResponse::Ok().body(msg),
        Err(e) => HttpResponseBuilder::new(StatusCode::from_u16(e.code.as_u16()).unwrap())
            .body(e.inner.to_string()),
    }
}

// #[get("/api/get_signin_url")]
// pub async fn get_signin_url(csd: Data<AuthSdk>) -> HttpResponse {
//     let signin_url = csd.get_signing_url("http://localhost:9000/callback.html".to_string());
//     HttpResponse::Ok().body(signin_url)
// }

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
//         }
//         Err(e) => {
//             error!("{}", e.inner.to_string());
//             HttpResponse::BadRequest().body(e.inner.to_string())
//         }
//     }
// }

async fn update_token(auth_sdk: &AuthSdk, tk: &[u8]) -> Result<CasdoorTokenResponse, SdkError> {
    let req = root_as_refresh_response(tk).unwrap();
    let res = auth_sdk
        .refresh_oauth_token(req.refresh_token().unwrap().to_string())
        .await;
    match res {
        Ok(result) => Ok(result),
        Err(err) => Err(err),
    }
}

async fn make_access_token(
    mut builder: FlatBufferBuilder<'_>,
    dest: &mut Vec<u8>,
    meta: CasdoorTokenResponse,
) {
    dest.clear();

    builder.reset();

    let args = AccessResponseArgs {
        access_token: Some(builder.create_string(meta.access_token().secret())),
        expires_in: meta.expires_in().unwrap().as_secs(),
        id_token: Some(builder.create_string(&meta.extra_fields().id_token)),
        refresh_token: Some(builder.create_string(meta.refresh_token().unwrap().secret())),
        scope: Some(builder.create_string(meta.scopes().unwrap()[0].as_ref())),
        token_type: Some(builder.create_string(meta.token_type().as_ref())),
    };

    let access_offset = AccessResponse::create(&mut builder, &args);

    finish_access_response_buffer(&mut builder, access_offset);

    let finished_data = builder.finished_data();

    dest.extend_from_slice(finished_data);
}
