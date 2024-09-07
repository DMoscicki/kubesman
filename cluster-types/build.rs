use std::{fs, io::Result};


fn main() -> Result<()> {

    let proto_files = fs::read_dir("protos").unwrap();

    let proto_iter = proto_files.into_iter();

    for file in proto_iter {
        prost_build::compile_protos(&[file.unwrap().path()], &["protos"])?;
    }
    Ok(())
}