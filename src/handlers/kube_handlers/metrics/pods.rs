use k8s_rs_pb::{converter, metrics::pkg::apis::metrics::v1beta1::PodMetricsList};
use kube::{api::ListParams, Api, Client};
use super::custom_api::PodMetrics;

pub async fn get_metrics(client: &Client) -> Result<PodMetricsList, std::io::Error> {
    let pod_metrics_list = Api::<PodMetrics>::all(client.clone()).list(&ListParams::default()).await.unwrap();

    converter::from_openapi(pod_metrics_list)
}