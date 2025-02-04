use k8s_openapi::{Metadata, NamespaceResourceScope, Resource};
use kube::api::ObjectMeta;


pub trait KubesmanResources<Scope = NamespaceResourceScope>:
Resource<Scope = Scope> + Metadata<Ty = ObjectMeta>
{
}

impl<T, Scope> KubesmanResources<Scope> for T
where
    T: Resource<Scope = Scope> + Metadata<Ty = ObjectMeta>,
{
}