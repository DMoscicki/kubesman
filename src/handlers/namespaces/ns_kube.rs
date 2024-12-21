use std::collections::BTreeMap;
use k8s_openapi::api::core::v1::Namespace;
use kube::{api::{ObjectList, PostParams}, Api, Client};


pub async fn get_all_namespaces(client: &Client) -> ObjectList<Namespace> {
    let namespace_api: Api<Namespace> = Api::all(client.clone());

    namespace_api.list(&Default::default()).await.unwrap()
}

pub async fn create_ns(client: &Client, ns: &String) -> bool {
    let res: Api<Namespace> = Api::all(client.clone());

    let pp = PostParams::default();

    let mut new_ns = Namespace::default();

    let mut label: BTreeMap<String, String> = BTreeMap::new();
    label.insert(String::from("name"), ns.to_string());

    new_ns.metadata.name = Some(ns.to_string());
    new_ns.metadata.labels = Some(label);

    let result = res.create(&pp, &new_ns).await;

    result.is_ok()
}
