use k8s_openapi::api::core::v1::Pod;
use kube::{api::ObjectList, Api, Client};

pub async fn get_all_pods(client: &Client) -> ObjectList<Pod> {
    let pods: Api<Pod> = Api::namespaced(client.clone(), "");

    let pod_list = pods.list(&Default::default()).await.unwrap();

    pod_list
}

pub async fn get_pods_by_namespace(client: &Client, ns: &str) -> ObjectList<Pod> {
    let pods: Api<Pod> = Api::namespaced(client.clone(), ns);

    let pod_list = pods.list(&Default::default()).await.unwrap();

    pod_list
}
