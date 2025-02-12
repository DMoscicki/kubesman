use k8s_rs_pb::{converter, metrics::pkg::apis::metrics::v1beta1::NodeMetricsList};
use kube::{api::ListParams, Api, Client};

use super::custom_api::NodeMetrics;

pub async fn get_metrics(client: &Client) -> Result<NodeMetricsList, std::io::Error> {
    let node_metrics_list = Api::<NodeMetrics>::all(client.clone()).list(&ListParams::default()).await.unwrap();

    converter::from_openapi(node_metrics_list)
}