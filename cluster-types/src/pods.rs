pub mod pod {
    include!(concat!(env!("OUT_DIR"), "/pod.rs"));
}

use pod::Pod;
use prost::Message;

impl Pod {
    pub fn fill_struct(data: Vec<u8>) -> Self {
        let pod = Pod::decode(&data[..]).unwrap();
        pod
    }

    pub fn encode_struct(pod: Pod) -> Vec<u8> {
        let mut buf: Vec<u8> = Vec::new();
        pod.encode(&mut buf).unwrap();
        buf
    }

}