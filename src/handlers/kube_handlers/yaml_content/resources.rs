use kube::{api::{DynamicObject, GroupVersionKind, Patch, PatchParams}, Api, Client, Discovery};

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
        if let Some((ar, _)) = Discovery::new(self.client.clone()).resolve_gvk(&GroupVersionKind::try_from(&self.content.types.clone().unwrap()).unwrap()) {
            let api_cl: Api<DynamicObject> = Api::namespaced_with(self.client.clone(), &self.content.metadata.namespace.clone().unwrap(), &ar);

            let res = api_cl.patch(&self.content.metadata.name.clone().unwrap().as_ref(), &PatchParams::apply("kubesman"), &Patch::Apply(&self.content.clone())).await;

            match res {
                Ok(_) => Ok(()),
                Err(e) => Err(e),
            }
        } else {
            let e = kube::Error::Discovery(kube::error::DiscoveryError::MissingResource("ApiResource".to_string()));
            Err(e)
        }
    }

    // pub fn update(&self, client: Client, namespace: &str) -> Result<(), Error> {
    //     let cl: Api<DynamicObject> = Api::namespaced_with(client, namespace, &self.content_type);
    //     Ok(())
    // }

}