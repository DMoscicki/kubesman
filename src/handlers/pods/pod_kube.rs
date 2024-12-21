use std::io;

use k8s_openapi::api::core::v1::Pod;
use k8s_rs_pb::{api::core::v1::PodList, converter};
use kube::{api::ObjectList, Api, Client};
use log::error;

pub async fn get_all_pods(client: &Client) -> Result<PodList, io::Error> {
    let pods: Api<Pod> = Api::namespaced(client.clone(), "");

    let pod_list = pods.list(&Default::default()).await;

    match pod_list {
        Ok(pd) => {
            let podx: PodList = converter::from_openapi(pd)?;
        
            Ok(podx)
        },
        Err(e) => {
            error!("{}", e);
            let e_new = io::Error::new(io::ErrorKind::NotFound, e.to_string());
            Err(e_new)
        },
    }
}

pub async fn get_pods_by_namespace(client: &Client, ns: &str) -> ObjectList<Pod> {
    let pods: Api<Pod> = Api::namespaced(client.clone(), ns);

    return pods.list(&Default::default()).await.unwrap()
}
