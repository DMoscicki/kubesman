use std::io;

use k8s_openapi::api::apps::v1::Deployment;
use k8s_rs_pb::api::apps::v1::DeploymentList;
use kube::{Api, Client};
use log::error;


pub async fn get_all_deployments(client: Client) -> Result<DeploymentList, io::Error>{
    let ds: Api<Deployment> = Api::namespaced(client, "");

    let deploy_list = ds.list(&Default::default()).await;

    match deploy_list {
        Ok(dpl) => {
            let deploy: DeploymentList = k8s_rs_pb::converter::from_openapi(dpl)?;
            // info!("{:#?}", deploy);
            Ok(deploy)
        },
        Err(e) => {
            error!("{}", e);
            let e_new = io::Error::new(io::ErrorKind::NotFound, e.to_string());
            Err(e_new)
        },
    }
}