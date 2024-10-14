use std::{collections::HashMap, fs::{self, File}, io::{self, BufWriter, Write}};

use serde_json::{Map, Value};

const URL: &str = "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.30.2/";

fn main() -> io::Result<()> {
    let entries = fs::read_dir("./kubernetes-json-schema-master/v1.30.2")?
    .map(|res| res.map(|e| e.path()))
    .collect::<Result<Vec<_>, io::Error>>()?;

    let entries_iter = entries.iter();

    for v in entries_iter {
        let data_raw = fs::read_to_string(v).expect("cant read file");
        let mut f: HashMap<String, Value> = serde_json::from_str(&data_raw).expect("error in json");
    
        let f_iter = f.iter_mut();

        for (kk, val) in f_iter {
            if kk == "$ref" {
                let new_val = overwrite_val(val);
                *val = Value::String(new_val);
            }
            match val {
                Value::Null => {},
                Value::Bool(_) => {},
                Value::Number(_) => {},
                Value::String(_) => {},
                Value::Array(_) => {},
                Value::Object(m) => {
                    get_keys(m);
                },
            }
        }

        fs::remove_file(v).expect("cant remove file");
        let new_f = File::create(v).expect("cant create file");
        let mut writer = BufWriter::new(new_f);
        serde_json::to_writer_pretty(&mut writer, &f).expect("cant write data to file");
        writer.flush().unwrap();
    }

    Ok(())
}

fn get_keys(map: &mut Map<String, Value>) {
    let tmp_iter = map.iter_mut();
    for (kk, val) in tmp_iter {
        if kk == "$ref" {
            let new_val = overwrite_val(val);
            *val = Value::String(new_val);
        }
        match val {
            Value::Null => {},
            Value::Bool(_) => {},
            Value::Number(_) => {},
            Value::String(_) => {},
            Value::Array(_) => {},
            Value::Object(m) => {
                get_keys(m);
            },
        }
    }
}

fn overwrite_val(val: &Value) -> String {
    if let Some(xx) = val.as_str() {
        let new_val = xx.replace(URL, "./");
        return new_val;
    } else {
        println!("is not str");
        return "".to_string();
    }
}