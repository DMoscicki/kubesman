use kube::{Api, Client, Resource};
use std::io::Error;

mod resources;
use resources::KubesmanResources;

pub enum KubeObjectType<T: KubesmanResources> {
    None,
    Some(T),
}

impl<T: KubesmanResources> KubeObjectType<T> {
    pub fn new(content: T) -> Self {
        KubeObjectType::Some(content)
    }

    pub fn apply(&self, client: Client) -> Result<(), Error>
    where
        <T as Resource>::DynamicType: Default,
    {
        let cl: Api<T> = Api::default_namespaced(client.clone());
        Ok(())
    }

    pub fn update(&self, client: Client) -> Result<(), Error>
    where
        <T as Resource>::DynamicType: Default,
    {
        let cl: Api<T> = Api::default_namespaced(client.clone());
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use k8s_openapi::api::core::v1::{ConfigMap, Pod};

    use crate::handlers::kube_handlers::yaml_content::KubeObjectType;

    #[test]
    fn success_get_pod() {
        let xx = KubeObjectType::new(Pod::default());
        match xx {
            KubeObjectType::Some(v) => {
                println!("{:#?}", v)
            }
            KubeObjectType::None => {
                panic!("erasd")
            }
        }
    }

    #[test]
    fn success_get_configmap() {
        let xx = KubeObjectType::new(ConfigMap::default());
        match xx {
            KubeObjectType::Some(x) => {
                println!("{:#?}", x)
            }
            KubeObjectType::None => panic!("err"),
        }
    }
}
