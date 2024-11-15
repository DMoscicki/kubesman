use std::io;

use k8s_openapi::api::core::v1::Pod;
use k8s_protos::api::core::v1::PodList;
use kube::{api::ObjectList, Api, Client};
use log::error;

pub async fn get_all_pods(client: &Client) -> Result<PodList, io::Error> {
    let pods: Api<Pod> = Api::namespaced(client.clone(), "");

    let pod_list = pods.list(&Default::default()).await;

    match pod_list {
        Ok(pd) => {
            let dd = serde_json::to_value(pd)?;

            let podx: PodList = serde_json::from_value(dd)?;
        
            Ok(podx)
        },
        Err(e) => {
            error!("{}", e);
            let kube_err = e.to_string();
            let e_new = io::Error::new(io::ErrorKind::NotFound, kube_err);
            Err(e_new)
        },
    }
}

pub async fn get_pods_by_namespace(client: &Client, ns: &str) -> ObjectList<Pod> {
    let pods: Api<Pod> = Api::namespaced(client.clone(), ns);

    let pod_list = pods.list(&Default::default()).await.unwrap();

    pod_list
}