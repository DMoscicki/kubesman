use std::{fs, io, time};
use k8s_protos::api::core::v1::PodList as PodBuf;

fn main() -> io::Result<()> {
    // let tt = "2024-10-24T15:48:22Z";
    // println!("{}", tt);

    // let x = DateTime::parse_from_rfc3339(tt).unwrap();
    // let fx = x.timestamp();
    // let xf = x.timestamp_subsec_nanos();
    // println!("{}", fx);
    // println!("{}", xf);

    // let xxxx = DateTime::from_timestamp(fx, xf).unwrap();

    // println!("{}", xxxx.to_rfc3339_opts(chrono::SecondsFormat::Secs, true));

    // let dx = DateTime::from;
    // println!("{}", dx.to_utc().to_rfc3339());
    // // println!("START");
    let data = fs::read_to_string("podlist.json").unwrap();

    let ff: PodBuf = serde_json::from_str(&data).unwrap();

    println!("{:#?}", ff);

    // let status = ff.status().containerStatuses();

    // for v in status {
    //     println!("{:#?}", v.state().running().startedAt())
    // }

    // let vex = PodBuf::write_to_bytes(&ff).unwrap();

    // println!("{}", vex.len());
    // println!("{:#?}", status);
    // println!("{:#?}", x);

    Ok(())
}