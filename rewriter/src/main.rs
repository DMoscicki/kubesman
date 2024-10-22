use std::{fs::{self, OpenOptions}, io::{self, Write}, path::{Path, PathBuf}};

fn main() -> io::Result<()> {
    let mut mod_files: Vec<PathBuf>  = Vec::new();

    let target_dir = Path::new("./k8s-protos/src");

    overwrite_mods(target_dir, &mut mod_files)?;

    add_mods(target_dir, &mut mod_files)?;

    Ok(())
}

fn overwrite_mods<'a>(path: &Path, mod_files: &'a mut Vec<PathBuf>) -> io::Result<()> {
    for val in fs::read_dir(path)? {
        let res = val?;
        if res.file_type()?.is_dir() {
            overwrite_mods(res.path().as_path(), mod_files)?
        }
        if res.file_name().to_str().unwrap() == "mod.rs" {
            let res_p = res.path().clone();
            let splitx: Vec<&str> = res_p.as_path().to_str().unwrap().split("/").collect();
            let index = splitx.iter().position(
                |&n| n == "v1" || n == "v1alpha1" || n == "v1alpha2" || n == "v2" || n == "v1beta1" ||
                n == "v2beta1" || n == "v2beta2" || n == "v1beta2" || n == "v1beta3"
            );
            if let Some(idx) = index {
                let content = fs::read_to_string(res.path())?;

                let to_str = format!("::{}::", splitx.get(idx).unwrap());

                let new_content = content.replace("::generated::", &to_str);

                let mut file = OpenOptions::new().write(true).truncate(true).open(res.path())?;

                file.write(new_content.as_bytes())?;
                file.flush()?
            }

            mod_files.push(res.path());
        }
    }

    Ok(())
}

fn add_mods<'a>(path: &Path, mod_files: &'a mut Vec<PathBuf>) -> io::Result<()> {
    let protos_dir = fs::read_dir(path)?;
    for v in protos_dir {
        let cur = v?;
        if cur.path().is_dir() {
            add_mods(&cur.path(), mod_files)?;
        }
        let mod_file = cur.path().clone().parent().unwrap().join("mod.rs");
        if !mod_files.contains(&mod_file) {
            let mut f = fs::OpenOptions::new().append(true).write(true).create(true).open(mod_file)?;
            let to_file = format!("pub mod {};\n", cur.file_name().to_str().unwrap());
            f.write(to_file.as_bytes())?;
            f.flush()?
        }
    }
    Ok(())
}