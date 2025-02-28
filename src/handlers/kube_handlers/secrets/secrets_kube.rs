use std::io;

use k8s_openapi::api::core::v1::Secret;
use k8s_rs_pb::api::core::v1::SecretList;
use kube::{Api, Client};
use tracing::error;


pub async fn get_all_secrets(client: &Client) -> Result<SecretList, io::Error> {
    let secrets: Api<Secret> = Api::all(client.clone());

    let secrets_list = secrets.list(&Default::default()).await;

    match secrets_list {
        Ok(v) => {
            let secrets_pb = k8s_rs_pb::converter::from_openapi(v)?;

            Ok(secrets_pb)
        },
        Err(e) => {
            error!("{}", e);
            let e_new = io::Error::new(io::ErrorKind::NotFound, e.to_string());
            Err(e_new)
        }
    }
}