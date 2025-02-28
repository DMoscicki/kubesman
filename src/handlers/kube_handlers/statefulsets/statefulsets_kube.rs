use std::io;

use k8s_openapi::api::apps::v1::StatefulSet;
use k8s_rs_pb::api::apps::v1::StatefulSetList;
use kube::{Api, Client};
use tracing::error;


pub async fn get_all_states(client: &Client) -> Result<StatefulSetList, io::Error> {
    let states: Api<StatefulSet> = Api::all(client.clone());

    let states_list = states.list(&Default::default()).await;

    match states_list {
        Ok(val) => {
            let st_pb: StatefulSetList = k8s_rs_pb::converter::from_openapi(val)?;

            Ok(st_pb)
        },
        Err(e) => {
            error!("{}", e);
            let e_new = io::Error::new(io::ErrorKind::NotFound, e.to_string());
            Err(e_new)
        },
    }
}