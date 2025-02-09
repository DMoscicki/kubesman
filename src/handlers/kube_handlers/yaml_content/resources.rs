use k8s_openapi::api::core::v1::Pod;
use k8s_openapi::Resource;
use kube::{
    api::{ApiResource, DynamicObject, GroupVersionKind, Patch, PatchParams},
    Api, Client, Discovery,
};
use kube::api::TypeMeta;
use kube::discovery::{ApiCapabilities, Scope};
use kube::error::DiscoveryError;
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
        let dvry = Discovery::new(self.client.clone()).run().await?;

        let (ar,caps) = check_gvk(self.content.types.clone(), dvry)?;

        let api_cl: Api<DynamicObject> = if let Some(namespace) = &self.content.metadata.namespace {
            if caps.scope == Scope::Cluster {
                Api::all_with(self.client.clone(), &ar)
            } else {
                Api::namespaced_with(self.client.clone(), namespace, &ar)
            }
        } else {
            Api::default_namespaced_with(self.client.clone(), &ar)
        };

        let res = api_cl
            .patch(
                &self.content.metadata.name.clone().unwrap().as_ref(),
                &PatchParams::apply("kubesman"),
                &Patch::Apply(&self.content),
            )
            .await;

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

fn check_gvk(tp: Option<TypeMeta>, discovery: Discovery) -> Result<(ApiResource, ApiCapabilities), kube::Error>{
    let gvk = if let Some(tm) = tp {
        GroupVersionKind::try_from(tm).unwrap()
    } else {
        let e = kube::Error::Discovery(DiscoveryError::InvalidGroupVersion("error to get gvk".to_string()));
        return Err(e)
    };

    Ok(discovery.resolve_gvk(&gvk).unwrap())
}