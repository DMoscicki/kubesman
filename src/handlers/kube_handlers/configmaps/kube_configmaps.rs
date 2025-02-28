use std::io;

use k8s_openapi::api::core::v1::ConfigMap;
use k8s_rs_pb::api::core::v1::ConfigMapList;
use kube::{Api, Client};
use tracing::error;


pub async fn get_all_configmaps(client: &Client) -> Result<ConfigMapList, io::Error> {
    let cfgs: Api<ConfigMap> = Api::all(client.clone());

    let cfgs_list = cfgs.list(&Default::default()).await;

    match cfgs_list {
        Ok(v) => {
            let configs: ConfigMapList = k8s_rs_pb::converter::from_openapi(v)?;

            Ok(configs)
        },
        Err(e) => {
            error!("{}", e);
            let e_new = io::Error::new(io::ErrorKind::NotFound, e.to_string());
            Err(e_new)
        }
    }
}