pub mod pod {
    include!(concat!(env!("OUT_DIR"), "/pod.rs"));
}

use pod::Pod;

impl Pod {
    fn build() -> Self {
        Pod::default()
    }
}