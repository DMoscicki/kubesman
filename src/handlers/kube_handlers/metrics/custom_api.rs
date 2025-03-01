use k8s_rs_pb::{apimachinery::pkg::api::resource::Quantity, metrics::pkg::apis::metrics::v1beta1::ContainerMetrics};
use kube::api::ObjectMeta;

// #[derive(serde::Deserialize, serde::Serialize, Clone, Debug)]
// pub struct PodMetricsContainer {
//     pub name: String,
//     pub usage: PodMetricsContainerUsage,
// }

// #[derive(serde::Deserialize, serde::Serialize, Clone, Debug)]
// pub struct PodMetricsContainerUsage {
//     pub cpu: Quantity,
//     pub memory: Quantity,
// }

#[derive(serde::Deserialize, serde::Serialize, Clone, Debug)]
pub struct PodMetrics {
    pub metadata: ObjectMeta,
    pub timestamp: String,
    pub window: String,
    pub containers: Vec<ContainerMetrics>,
}

impl k8s_openapi::Resource for PodMetrics {
    const GROUP: &'static str = "metrics.k8s.io";
    const KIND: &'static str = "PodMetrics";
    const VERSION: &'static str = "v1beta1";
    const API_VERSION: &'static str = "metrics.k8s.io/v1beta1";
    const URL_PATH_SEGMENT: &'static str = "pods";

    type Scope = k8s_openapi::NamespaceResourceScope;
}

impl k8s_openapi::Metadata for PodMetrics {
    type Ty = ObjectMeta;

    fn metadata(&self) -> &Self::Ty {
        &self.metadata
    }

    fn metadata_mut(&mut self) -> &mut Self::Ty {
        &mut self.metadata
    }
}


#[derive(serde::Deserialize, serde::Serialize, Clone, Debug)]
pub struct NodeUsage {
    pub cpu: Quantity,
    pub memory: Quantity,
}

#[derive(serde::Deserialize, serde::Serialize, Clone, Debug)]
pub struct NodeMetrics {
    pub metadata: ObjectMeta,
    pub timestamp: String,
    pub window: String,
    pub usage: NodeUsage,
}

impl k8s_openapi::Resource for  NodeMetrics {
    const GROUP: &'static str = "metrics.k8s.io";
    const KIND: &'static str = "NodeMetrics";
    const VERSION: &'static str = "v1beta1";
    const API_VERSION: &'static str = "metrics.k8s.io/v1beta1";
    const URL_PATH_SEGMENT: &'static str = "nodes";

    type Scope = k8s_openapi::ClusterResourceScope;
}

impl k8s_openapi::Metadata for NodeMetrics {
    type Ty = ObjectMeta;

    fn metadata(&self) -> &Self::Ty {
        &self.metadata
    }

    fn metadata_mut(&mut self) -> &mut Self::Ty {
        &mut self.metadata
    }
}