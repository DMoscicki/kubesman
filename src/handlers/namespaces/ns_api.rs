use std::collections::BTreeMap;
use k8s_protos::api::core::v1::NamespaceStatus as St;
use k8s_openapi::api::core::v1::Namespace;
use kube::{api::{ObjectList, PostParams}, Api, Client};


pub async fn get_all_namespaces(client: &Client) -> ObjectList<Namespace> {
    let namespace_api: Api<Namespace> = Api::all(client.clone());

    let ns_list = namespace_api.list(&Default::default()).await.unwrap();

    let xns = ns_list.items.get(0).unwrap().clone();

    let fxs = serde_json::to_string(&xns.status.unwrap()).unwrap();

    let xfg = protobuf_json_mapping::parse_from_str::<St>(&fxs).unwrap();

    println!("{}", xfg);

    ns_list
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
    match result {
        Ok(_) => return true,
        Err(_) => return false,
    }
}