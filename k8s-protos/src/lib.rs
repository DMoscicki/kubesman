pub mod api;
pub mod apiextensions_apiserver;
pub mod apimachinery;
pub mod kube_aggregator;
pub mod metrics;

use serde::{Deserialize, Serialize};
use protobuf::MessageField;

#[derive(Serialize, Deserialize)]
#[serde(remote = "MessageField")]
pub struct MessageFieldDef<T>(pub Option<Box<T>>); // dont touch


pub mod custom_date {
    use serde::{Deserialize, Deserializer};
    use super::apimachinery::pkg::apis::meta::v1::Time;
    use chrono::{self, DateTime};
    
    pub fn deserialize<'de, D>(deserializer: D) -> Result<::protobuf::MessageField<Time>, D::Error>
    where
        D: Deserializer<'de>,
    {
        let s = String::deserialize(deserializer).unwrap_or_default();
        match DateTime::parse_from_rfc3339(&s) {
            Ok(val) => {
                let secs = val.timestamp();
                let nanos = val.timestamp_subsec_nanos();

                let mut new_time = Time::new();

                new_time.set_seconds(secs);
                new_time.set_nanos(nanos as i32);
            
                let fiex = ::protobuf::MessageField::some(new_time);
                Ok(fiex)
            },
            Err(err) => {
                eprintln!("Parse error: {}", err);

                let def_time = Time::default();

                Ok(protobuf::MessageField::some(def_time))
            },
        }
    }
    
}

pub mod quantity_parse {
    use std::collections::BTreeMap;

    use serde::{Deserialize, Deserializer};

    use crate::apimachinery::pkg::api::resource::Quantity;
    
    pub fn deserialize<'de, D>(deserializer: D) -> Result<::std::collections::BTreeMap<::std::string::String, crate::apimachinery::pkg::api::resource::Quantity>, D::Error>
    where
        D: Deserializer<'de>,
    {
        let map_iter: BTreeMap<String, String> = BTreeMap::deserialize(deserializer).unwrap_or_default();
        let mut new_map: BTreeMap<String, crate::apimachinery::pkg::api::resource::Quantity> = BTreeMap::new();

        if map_iter.len() > 0 {
            for (k, v) in map_iter.iter() {
                let mut quantity = Quantity::new();
                quantity.set_string(v.to_string());
                new_map.insert(k.to_string(), quantity);
            }

            Ok(new_map)
        } else {
            Ok(new_map)
        }
    }
}