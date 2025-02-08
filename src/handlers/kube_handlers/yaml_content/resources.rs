use k8s_openapi::api::core::v1::Pod;
use k8s_openapi::Resource;
use kube::{
    api::{ApiResource, DynamicObject, GroupVersionKind, Patch, PatchParams},
    Api, Client, Discovery,
};
use log::info;

pub struct KubeObjectType {
    pub client: Client,
    pub content: DynamicObject,
}

impl KubeObjectType {
    pub fn new(client: Client, content_u8: Vec<u8>) -> Self {
        let content: DynamicObject = serde_yaml::from_slice(&content_u8).unwrap();

        KubeObjectType { client, content }
    }

    pub async fn apply(&self) -> Result<(), kube::Error> {
        let mut plural = String::from(&self.content.types.clone().unwrap().kind.to_lowercase());
        plural.push('s');


        // TODO: Add Cluster Scope and namespace checking
        let api_cl: Api<DynamicObject> = Api::namespaced_with(
            self.client.clone(),
            &self.content.metadata.namespace.clone().unwrap(),
            &ApiResource {
                group: "".to_string(),
                api_version: self.content.types.clone().unwrap().api_version,
                kind: self.content.types.clone().unwrap().kind,
                version: self.content.types.clone().unwrap().api_version,
                plural,
            },
        );

        let res = api_cl
            .patch(
                &self.content.metadata.name.clone().unwrap().as_ref(),
                &PatchParams::apply("kubesman"),
                &Patch::Apply(&self.content),
            )
            .await;

        info!("{:#?}", res);

        match res {
            Ok(_) => Ok(()),
            Err(e) => Err(e),
        }
    }

    // pub fn update(&self, client: Client, namespace: &str) -> Result<(), Error> {
    //     let cl: Api<DynamicObject> = Api::namespaced_with(client, namespace, &self.content_type);
    //     Ok(())
    // }
}
