use k8s_openapi::api::apps::v1::Deployment;
use kube::{api::ObjectList, Api, Client};


pub async fn get_all_deployments(client: Client) -> ObjectList<Deployment> {
    let ds: Api<Deployment> = Api::all(client);

    let deploy_list = ds.list(&Default::default()).await.unwrap();

    deploy_list
}