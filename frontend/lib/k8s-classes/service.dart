import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'service.g.dart';


///Service is a named abstraction of software service (for example, mysql) consisting of
///local port (for example 3306) that the proxy listens on, and the selector that determines
///which pods will answer requests sent through the proxy.
@JsonSerializable()
class Service {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    Kind? kind;
    
    ///Standard object's metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///Spec defines the behavior of a service.
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "spec")
    IoK8SApiCoreV1ServiceSpec? spec;
    
    ///Most recently observed status of the service. Populated by the system. Read-only. More
    ///info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "status")
    IoK8SApiCoreV1ServiceStatus? status;

    Service({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
        this.status,
    });

    factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

    Map<String, dynamic> toJson() => _$ServiceToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("Service")
    SERVICE
}

final kindValues = EnumValues({
    "Service": Kind.SERVICE
});


///Standard object's metadata. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
///
///ObjectMeta is metadata that all persisted resources must have, which includes all objects
///users must create.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1ObjectMeta {
    
    ///Annotations is an unstructured key value map stored with a resource that may be set by
    ///external tools to store and retrieve arbitrary metadata. They are not queryable and
    ///should be preserved when modifying objects. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations
    @JsonKey(name: "annotations")
    Map<String, String>? annotations;
    
    ///CreationTimestamp is a timestamp representing the server time when this object was
    ///created. It is not guaranteed to be set in happens-before order across separate
    ///operations. Clients may not set this value. It is represented in RFC3339 form and is in
    ///UTC.
    ///
    ///Populated by the system. Read-only. Null for lists. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "creationTimestamp")
    DateTime? creationTimestamp;
    
    ///Number of seconds allowed for this object to gracefully terminate before it will be
    ///removed from the system. Only set when deletionTimestamp is also set. May only be
    ///shortened. Read-only.
    @JsonKey(name: "deletionGracePeriodSeconds")
    int? deletionGracePeriodSeconds;
    
    ///DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This
    ///field is set by the server when a graceful deletion is requested by the user, and is not
    ///directly settable by a client. The resource is expected to be deleted (no longer visible
    ///from resource lists, and not reachable by name) after the time in this field, once the
    ///finalizers list is empty. As long as the finalizers list contains items, deletion is
    ///blocked. Once the deletionTimestamp is set, this value may not be unset or be set further
    ///into the future, although it may be shortened or the resource may be deleted prior to
    ///this time. For example, a user may request that a pod is deleted in 30 seconds. The
    ///Kubelet will react by sending a graceful termination signal to the containers in the pod.
    ///After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the
    ///container and after cleanup, remove the pod from the API. In the presence of network
    ///partitions, this object may still exist after this timestamp, until an administrator or
    ///automated process can determine the resource is fully terminated. If not set, graceful
    ///deletion of the object has not been requested.
    ///
    ///Populated by the system when a graceful deletion is requested. Read-only. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "deletionTimestamp")
    DateTime? deletionTimestamp;
    
    ///Must be empty before the object is deleted from the registry. Each entry is an identifier
    ///for the responsible component that will remove the entry from the list. If the
    ///deletionTimestamp of the object is non-nil, entries in this list can only be removed.
    ///Finalizers may be processed and removed in any order.  Order is NOT enforced because it
    ///introduces significant risk of stuck finalizers. finalizers is a shared field, any actor
    ///with permission can reorder it. If the finalizer list is processed in order, then this
    ///can lead to a situation in which the component responsible for the first finalizer in the
    ///list is waiting for a signal (field value, external system, or other) produced by a
    ///component responsible for a finalizer later in the list, resulting in a deadlock. Without
    ///enforced ordering finalizers are free to order amongst themselves and are not vulnerable
    ///to ordering changes in the list.
    @JsonKey(name: "finalizers")
    List<String>? finalizers;
    
    ///GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF
    ///the Name field has not been provided. If this field is used, the name returned to the
    ///client will be different than the name passed. This value will also be combined with a
    ///unique suffix. The provided value has the same validation rules as the Name field, and
    ///may be truncated by the length of the suffix required to make the value unique on the
    ///server.
    ///
    ///If this field is specified and the generated name exists, the server will return a 409.
    ///
    ///Applied only if Name is not specified. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
    @JsonKey(name: "generateName")
    String? generateName;
    
    ///A sequence number representing a specific generation of the desired state. Populated by
    ///the system. Read-only.
    @JsonKey(name: "generation")
    int? generation;
    
    ///Map of string keys and values that can be used to organize and categorize (scope and
    ///select) objects. May match selectors of replication controllers and services. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/labels
    @JsonKey(name: "labels")
    Map<String, String>? labels;
    
    ///ManagedFields maps workflow-id and version to the set of fields that are managed by that
    ///workflow. This is mostly for internal housekeeping, and users typically shouldn't need to
    ///set or understand this field. A workflow can be the user's name, a controller's name, or
    ///the name of a specific apply path like "ci-cd". The set of fields is always in the
    ///version that the workflow used when modifying the object.
    @JsonKey(name: "managedFields")
    List<IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry>? managedFields;
    
    ///Name must be unique within a namespace. Is required when creating resources, although
    ///some resources may allow a client to request the generation of an appropriate name
    ///automatically. Name is primarily intended for creation idempotence and configuration
    ///definition. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace defines the space within which each name must be unique. An empty namespace is
    ///equivalent to the "default" namespace, but "default" is the canonical representation. Not
    ///all objects are required to be scoped to a namespace - the value of this field for those
    ///objects will be empty.
    ///
    ///Must be a DNS_LABEL. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///List of objects depended by this object. If ALL objects in the list have been deleted,
    ///this object will be garbage collected. If this object is managed by a controller, then an
    ///entry in this list will point to this controller, with the controller field set to true.
    ///There cannot be more than one managing controller.
    @JsonKey(name: "ownerReferences")
    List<IoK8SApimachineryPkgApisMetaV1OwnerReference>? ownerReferences;
    
    ///An opaque value that represents the internal version of this object that can be used by
    ///clients to determine when objects have changed. May be used for optimistic concurrency,
    ///change detection, and the watch operation on a resource or set of resources. Clients must
    ///treat these values as opaque and passed unmodified back to the server. They may only be
    ///valid for a particular resource or set of resources.
    ///
    ///Populated by the system. Read-only. Value must be treated as opaque by clients and . More
    ///info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Deprecated: selfLink is a legacy read-only field that is no longer populated by the
    ///system.
    @JsonKey(name: "selfLink")
    String? selfLink;
    
    ///UID is the unique in time and space value for this object. It is typically generated by
    ///the server on successful creation of a resource and is not allowed to change on PUT
    ///operations.
    ///
    ///Populated by the system. Read-only. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApimachineryPkgApisMetaV1ObjectMeta({
        this.annotations,
        this.creationTimestamp,
        this.deletionGracePeriodSeconds,
        this.deletionTimestamp,
        this.finalizers,
        this.generateName,
        this.generation,
        this.labels,
        this.managedFields,
        this.name,
        this.namespace,
        this.ownerReferences,
        this.resourceVersion,
        this.selfLink,
        this.uid,
    });

    factory IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ObjectMetaFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ObjectMetaToJson(this);
}


///ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource
///that the fieldset applies to.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry {
    
    ///APIVersion defines the version of this resource that this field set applies to. The
    ///format is "group/version" just like the top-level APIVersion field. It is necessary to
    ///track the version of a field set because it cannot be automatically converted.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///FieldsType is the discriminator for the different fields format and version. There is
    ///currently only one possible value: "FieldsV1"
    @JsonKey(name: "fieldsType")
    String? fieldsType;
    
    ///FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
    @JsonKey(name: "fieldsV1")
    Map<String, dynamic>? fieldsV1;
    
    ///Manager is an identifier of the workflow managing these fields.
    @JsonKey(name: "manager")
    String? manager;
    
    ///Operation is the type of operation which lead to this ManagedFieldsEntry being created.
    ///The only valid values for this field are 'Apply' and 'Update'.
    @JsonKey(name: "operation")
    String? operation;
    
    ///Subresource is the name of the subresource used to update that object, or empty string if
    ///the object was updated through the main resource. The value of this field is used to
    ///distinguish between managers, even if they share the same name. For example, a status
    ///update will be distinct from a regular update using the same manager name. Note that the
    ///APIVersion field is not related to the Subresource field and it always corresponds to the
    ///version of the main resource.
    @JsonKey(name: "subresource")
    String? subresource;
    
    ///Time is the timestamp of when the ManagedFields entry was added. The timestamp will also
    ///be updated if a field is added, the manager changes any of the owned fields value or
    ///removes a field. The timestamp does not update when a field is removed from the entry
    ///because another manager took it over.
    @JsonKey(name: "time")
    DateTime? time;

    IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry({
        this.apiVersion,
        this.fieldsType,
        this.fieldsV1,
        this.manager,
        this.operation,
        this.subresource,
        this.time,
    });

    factory IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryToJson(this);
}


///OwnerReference contains enough information to let you identify an owning object. An
///owning object must be in the same namespace as the dependent, or be cluster-scoped, so
///there is no namespace field.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1OwnerReference {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String apiVersion;
    
    ///If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot
    ///be deleted from the key-value store until this reference is removed. See
    ///https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion
    ///for how the garbage collector interacts with this field and enforces the foreground
    ///deletion. Defaults to false. To set this field, a user needs "delete" permission of the
    ///owner, otherwise 422 (Unprocessable Entity) will be returned.
    @JsonKey(name: "blockOwnerDeletion")
    bool? blockOwnerDeletion;
    
    ///If true, this reference points to the managing controller.
    @JsonKey(name: "controller")
    bool? controller;
    
    ///Kind of the referent. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String kind;
    
    ///Name of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
    @JsonKey(name: "name")
    String name;
    
    ///UID of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
    @JsonKey(name: "uid")
    String uid;

    IoK8SApimachineryPkgApisMetaV1OwnerReference({
        required this.apiVersion,
        this.blockOwnerDeletion,
        this.controller,
        required this.kind,
        required this.name,
        required this.uid,
    });

    factory IoK8SApimachineryPkgApisMetaV1OwnerReference.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceToJson(this);
}


///Spec defines the behavior of a service.
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///ServiceSpec describes the attributes that a user creates on a service.
@JsonSerializable()
class IoK8SApiCoreV1ServiceSpec {
    
    ///allocateLoadBalancerNodePorts defines if NodePorts will be automatically allocated for
    ///services with type LoadBalancer.  Default is "true". It may be set to "false" if the
    ///cluster load-balancer does not rely on NodePorts.  If the caller requests specific
    ///NodePorts (by specifying a value), those requests will be respected, regardless of this
    ///field. This field may only be set for services with type LoadBalancer and will be cleared
    ///if the type is changed to any other type.
    @JsonKey(name: "allocateLoadBalancerNodePorts")
    bool? allocateLoadBalancerNodePorts;
    
    ///clusterIP is the IP address of the service and is usually assigned randomly. If an
    ///address is specified manually, is in-range (as per system configuration), and is not in
    ///use, it will be allocated to the service; otherwise creation of the service will fail.
    ///This field may not be changed through updates unless the type field is also being changed
    ///to ExternalName (which requires this field to be blank) or the type field is being
    ///changed from ExternalName (in which case this field may optionally be specified, as
    ///describe above).  Valid values are "None", empty string (""), or a valid IP address.
    ///Setting this to "None" makes a "headless service" (no virtual IP), which is useful when
    ///direct endpoint connections are preferred and proxying is not required.  Only applies to
    ///types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a
    ///Service of type ExternalName, creation will fail. This field will be wiped when updating
    ///a Service to type ExternalName. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
    @JsonKey(name: "clusterIP")
    String? clusterIp;
    
    ///ClusterIPs is a list of IP addresses assigned to this service, and are usually assigned
    ///randomly.  If an address is specified manually, is in-range (as per system
    ///configuration), and is not in use, it will be allocated to the service; otherwise
    ///creation of the service will fail. This field may not be changed through updates unless
    ///the type field is also being changed to ExternalName (which requires this field to be
    ///empty) or the type field is being changed from ExternalName (in which case this field may
    ///optionally be specified, as describe above).  Valid values are "None", empty string (""),
    ///or a valid IP address.  Setting this to "None" makes a "headless service" (no virtual
    ///IP), which is useful when direct endpoint connections are preferred and proxying is not
    ///required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is
    ///specified when creating a Service of type ExternalName, creation will fail. This field
    ///will be wiped when updating a Service to type ExternalName.  If this field is not
    ///specified, it will be initialized from the clusterIP field.  If this field is specified,
    ///clients must ensure that clusterIPs[0] and clusterIP have the same value.
    ///
    ///This field may hold a maximum of two entries (dual-stack IPs, in either order). These IPs
    ///must correspond to the values of the ipFamilies field. Both clusterIPs and ipFamilies are
    ///governed by the ipFamilyPolicy field. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
    @JsonKey(name: "clusterIPs")
    List<String>? clusterIPs;
    
    ///externalIPs is a list of IP addresses for which nodes in the cluster will also accept
    ///traffic for this service.  These IPs are not managed by Kubernetes.  The user is
    ///responsible for ensuring that traffic arrives at a node with this IP.  A common example
    ///is external load-balancers that are not part of the Kubernetes system.
    @JsonKey(name: "externalIPs")
    List<String>? externalIPs;
    
    ///externalName is the external reference that discovery mechanisms will return as an alias
    ///for this service (e.g. a DNS CNAME record). No proxying will be involved.  Must be a
    ///lowercase RFC-1123 hostname (https://tools.ietf.org/html/rfc1123) and requires `type` to
    ///be "ExternalName".
    @JsonKey(name: "externalName")
    String? externalName;
    
    ///externalTrafficPolicy describes how nodes distribute service traffic they receive on one
    ///of the Service's "externally-facing" addresses (NodePorts, ExternalIPs, and LoadBalancer
    ///IPs). If set to "Local", the proxy will configure the service in a way that assumes that
    ///external load balancers will take care of balancing the service traffic between nodes,
    ///and so each node will deliver traffic only to the node-local endpoints of the service,
    ///without masquerading the client source IP. (Traffic mistakenly sent to a node with no
    ///endpoints will be dropped.) The default value, "Cluster", uses the standard behavior of
    ///routing to all endpoints evenly (possibly modified by topology and other features). Note
    ///that traffic sent to an External IP or LoadBalancer IP from within the cluster will
    ///always get "Cluster" semantics, but clients sending to a NodePort from within the cluster
    ///may need to take traffic policy into account when picking a node.
    @JsonKey(name: "externalTrafficPolicy")
    String? externalTrafficPolicy;
    
    ///healthCheckNodePort specifies the healthcheck nodePort for the service. This only applies
    ///when type is set to LoadBalancer and externalTrafficPolicy is set to Local. If a value is
    ///specified, is in-range, and is not in use, it will be used.  If not specified, a value
    ///will be automatically allocated.  External systems (e.g. load-balancers) can use this
    ///port to determine if a given node holds endpoints for this service or not.  If this field
    ///is specified when creating a Service which does not need it, creation will fail. This
    ///field will be wiped when updating a Service to no longer need it (e.g. changing type).
    ///This field cannot be updated once set.
    @JsonKey(name: "healthCheckNodePort")
    int? healthCheckNodePort;
    
    ///InternalTrafficPolicy describes how nodes distribute service traffic they receive on the
    ///ClusterIP. If set to "Local", the proxy will assume that pods only want to talk to
    ///endpoints of the service on the same node as the pod, dropping the traffic if there are
    ///no local endpoints. The default value, "Cluster", uses the standard behavior of routing
    ///to all endpoints evenly (possibly modified by topology and other features).
    @JsonKey(name: "internalTrafficPolicy")
    String? internalTrafficPolicy;
    
    ///IPFamilies is a list of IP families (e.g. IPv4, IPv6) assigned to this service. This
    ///field is usually assigned automatically based on cluster configuration and the
    ///ipFamilyPolicy field. If this field is specified manually, the requested family is
    ///available in the cluster, and ipFamilyPolicy allows it, it will be used; otherwise
    ///creation of the service will fail. This field is conditionally mutable: it allows for
    ///adding or removing a secondary IP family, but it does not allow changing the primary IP
    ///family of the Service. Valid values are "IPv4" and "IPv6".  This field only applies to
    ///Services of types ClusterIP, NodePort, and LoadBalancer, and does apply to "headless"
    ///services. This field will be wiped when updating a Service to type ExternalName.
    ///
    ///This field may hold a maximum of two entries (dual-stack families, in either order).
    ///These families must correspond to the values of the clusterIPs field, if specified. Both
    ///clusterIPs and ipFamilies are governed by the ipFamilyPolicy field.
    @JsonKey(name: "ipFamilies")
    List<String>? ipFamilies;
    
    ///IPFamilyPolicy represents the dual-stack-ness requested or required by this Service. If
    ///there is no value provided, then this field will be set to SingleStack. Services can be
    ///"SingleStack" (a single IP family), "PreferDualStack" (two IP families on dual-stack
    ///configured clusters or a single IP family on single-stack clusters), or
    ///"RequireDualStack" (two IP families on dual-stack configured clusters, otherwise fail).
    ///The ipFamilies and clusterIPs fields depend on the value of this field. This field will
    ///be wiped when updating a service to type ExternalName.
    @JsonKey(name: "ipFamilyPolicy")
    String? ipFamilyPolicy;
    
    ///loadBalancerClass is the class of the load balancer implementation this Service belongs
    ///to. If specified, the value of this field must be a label-style identifier, with an
    ///optional prefix, e.g. "internal-vip" or "example.com/internal-vip". Unprefixed names are
    ///reserved for end-users. This field can only be set when the Service type is
    ///'LoadBalancer'. If not set, the default load balancer implementation is used, today this
    ///is typically done through the cloud provider integration, but should apply for any
    ///default implementation. If set, it is assumed that a load balancer implementation is
    ///watching for Services with a matching class. Any default load balancer implementation
    ///(e.g. cloud providers) should ignore Services that set this field. This field can only be
    ///set when creating or updating a Service to type 'LoadBalancer'. Once set, it can not be
    ///changed. This field will be wiped when a service is updated to a non 'LoadBalancer' type.
    @JsonKey(name: "loadBalancerClass")
    String? loadBalancerClass;
    
    ///Only applies to Service Type: LoadBalancer. This feature depends on whether the
    ///underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is
    ///created. This field will be ignored if the cloud-provider does not support the feature.
    ///Deprecated: This field was under-specified and its meaning varies across implementations.
    ///Using it is non-portable and it may not support dual-stack. Users are encouraged to use
    ///implementation-specific annotations when available.
    @JsonKey(name: "loadBalancerIP")
    String? loadBalancerIp;
    
    ///If specified and supported by the platform, this will restrict traffic through the
    ///cloud-provider load-balancer will be restricted to the specified client IPs. This field
    ///will be ignored if the cloud-provider does not support the feature." More info:
    ///https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/
    @JsonKey(name: "loadBalancerSourceRanges")
    List<String>? loadBalancerSourceRanges;
    
    ///The list of ports that are exposed by this service. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
    @JsonKey(name: "ports")
    List<IoK8SApiCoreV1ServicePort>? ports;
    
    ///publishNotReadyAddresses indicates that any agent which deals with endpoints for this
    ///Service should disregard any indications of ready/not-ready. The primary use case for
    ///setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records
    ///for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate
    ///Endpoints and EndpointSlice resources for Services interpret this to mean that all
    ///endpoints are considered "ready" even if the Pods themselves are not. Agents which
    ///consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice
    ///resources can safely assume this behavior.
    @JsonKey(name: "publishNotReadyAddresses")
    bool? publishNotReadyAddresses;
    
    ///Route service traffic to pods with label keys and values matching this selector. If empty
    ///or not present, the service is assumed to have an external process managing its
    ///endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort,
    ///and LoadBalancer. Ignored if type is ExternalName. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/
    @JsonKey(name: "selector")
    Map<String, String>? selector;
    
    ///Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based
    ///session affinity. Must be ClientIP or None. Defaults to None. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
    @JsonKey(name: "sessionAffinity")
    String? sessionAffinity;
    
    ///sessionAffinityConfig contains the configurations of session affinity.
    @JsonKey(name: "sessionAffinityConfig")
    IoK8SApiCoreV1SessionAffinityConfig? sessionAffinityConfig;
    
    ///TrafficDistribution offers a way to express preferences for how traffic is distributed to
    ///Service endpoints. Implementations can use this field as a hint, but are not required to
    ///guarantee strict adherence. If the field is not set, the implementation will apply its
    ///default routing strategy. If set to "PreferClose", implementations should prioritize
    ///endpoints that are topologically close (e.g., same zone). This is an alpha field and
    ///requires enabling ServiceTrafficDistribution feature.
    @JsonKey(name: "trafficDistribution")
    String? trafficDistribution;
    
    ///type determines how the Service is exposed. Defaults to ClusterIP. Valid options are
    ///ExternalName, ClusterIP, NodePort, and LoadBalancer. "ClusterIP" allocates a
    ///cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by
    ///the selector or if that is not specified, by manual construction of an Endpoints object
    ///or EndpointSlice objects. If clusterIP is "None", no virtual IP is allocated and the
    ///endpoints are published as a set of endpoints rather than a virtual IP. "NodePort" builds
    ///on ClusterIP and allocates a port on every node which routes to the same endpoints as the
    ///clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if
    ///supported in the current cloud) which routes to the same endpoints as the clusterIP.
    ///"ExternalName" aliases this service to the specified externalName. Several other fields
    ///do not apply to ExternalName services. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types
    @JsonKey(name: "type")
    String? type;

    IoK8SApiCoreV1ServiceSpec({
        this.allocateLoadBalancerNodePorts,
        this.clusterIp,
        this.clusterIPs,
        this.externalIPs,
        this.externalName,
        this.externalTrafficPolicy,
        this.healthCheckNodePort,
        this.internalTrafficPolicy,
        this.ipFamilies,
        this.ipFamilyPolicy,
        this.loadBalancerClass,
        this.loadBalancerIp,
        this.loadBalancerSourceRanges,
        this.ports,
        this.publishNotReadyAddresses,
        this.selector,
        this.sessionAffinity,
        this.sessionAffinityConfig,
        this.trafficDistribution,
        this.type,
    });

    factory IoK8SApiCoreV1ServiceSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ServiceSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ServiceSpecToJson(this);
}


///ServicePort contains information on service's port.
@JsonSerializable()
class IoK8SApiCoreV1ServicePort {
    
    ///The application protocol for this port. This is used as a hint for implementations to
    ///offer richer behavior for protocols that they understand. This field follows standard
    ///Kubernetes label syntax. Valid values are either:
    ///
    ///* Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335
    ///and https://www.iana.org/assignments/service-names).
    ///
    ///* Kubernetes-defined prefixed names:
    ///* 'kubernetes.io/h2c' - HTTP/2 prior knowledge over cleartext as described in
    ///https://www.rfc-editor.org/rfc/rfc9113.html#name-starting-http-2-with-prior-
    ///* 'kubernetes.io/ws'  - WebSocket over cleartext as described in
    ///https://www.rfc-editor.org/rfc/rfc6455
    ///* 'kubernetes.io/wss' - WebSocket over TLS as described in
    ///https://www.rfc-editor.org/rfc/rfc6455
    ///
    ///* Other protocols should use implementation-defined prefixed names such as
    ///mycompany.com/my-custom-protocol.
    @JsonKey(name: "appProtocol")
    String? appProtocol;
    
    ///The name of this port within the service. This must be a DNS_LABEL. All ports within a
    ///ServiceSpec must have unique names. When considering the endpoints for a Service, this
    ///must match the 'name' field in the EndpointPort. Optional if only one ServicePort is
    ///defined on this service.
    @JsonKey(name: "name")
    String? name;
    
    ///The port on each node on which this service is exposed when type is NodePort or
    ///LoadBalancer.  Usually assigned by the system. If a value is specified, in-range, and not
    ///in use it will be used, otherwise the operation will fail.  If not specified, a port will
    ///be allocated if this Service requires one.  If this field is specified when creating a
    ///Service which does not need it, creation will fail. This field will be wiped when
    ///updating a Service to no longer need it (e.g. changing type from NodePort to ClusterIP).
    ///More info: https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport
    @JsonKey(name: "nodePort")
    int? nodePort;
    
    ///The port that will be exposed by this service.
    @JsonKey(name: "port")
    int port;
    
    ///The IP protocol for this port. Supports "TCP", "UDP", and "SCTP". Default is TCP.
    @JsonKey(name: "protocol")
    String? protocol;
    
    ///Number or name of the port to access on the pods targeted by the service. Number must be
    ///in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be
    ///looked up as a named port in the target Pod's container ports. If this is not specified,
    ///the value of the 'port' field is used (an identity map). This field is ignored for
    ///services with clusterIP=None, and should be omitted or set equal to the 'port' field.
    ///More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service
    @JsonKey(name: "targetPort")
    dynamic targetPort;

    IoK8SApiCoreV1ServicePort({
        this.appProtocol,
        this.name,
        this.nodePort,
        required this.port,
        this.protocol,
        this.targetPort,
    });

    factory IoK8SApiCoreV1ServicePort.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ServicePortFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ServicePortToJson(this);
}


///sessionAffinityConfig contains the configurations of session affinity.
///
///SessionAffinityConfig represents the configurations of session affinity.
@JsonSerializable()
class IoK8SApiCoreV1SessionAffinityConfig {
    
    ///clientIP contains the configurations of Client IP based session affinity.
    @JsonKey(name: "clientIP")
    IoK8SApiCoreV1ClientIpConfig? clientIp;

    IoK8SApiCoreV1SessionAffinityConfig({
        this.clientIp,
    });

    factory IoK8SApiCoreV1SessionAffinityConfig.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SessionAffinityConfigFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SessionAffinityConfigToJson(this);
}


///clientIP contains the configurations of Client IP based session affinity.
///
///ClientIPConfig represents the configurations of Client IP based session affinity.
@JsonSerializable()
class IoK8SApiCoreV1ClientIpConfig {
    
    ///timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must
    ///be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for
    ///3 hours).
    @JsonKey(name: "timeoutSeconds")
    int? timeoutSeconds;

    IoK8SApiCoreV1ClientIpConfig({
        this.timeoutSeconds,
    });

    factory IoK8SApiCoreV1ClientIpConfig.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ClientIpConfigFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ClientIpConfigToJson(this);
}


///Most recently observed status of the service. Populated by the system. Read-only. More
///info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///ServiceStatus represents the current status of a service.
@JsonSerializable()
class IoK8SApiCoreV1ServiceStatus {
    
    ///Current service state
    @JsonKey(name: "conditions")
    List<IoK8SApimachineryPkgApisMetaV1Condition>? conditions;
    
    ///LoadBalancer contains the current status of the load-balancer, if one is present.
    @JsonKey(name: "loadBalancer")
    IoK8SApiCoreV1LoadBalancerStatus? loadBalancer;

    IoK8SApiCoreV1ServiceStatus({
        this.conditions,
        this.loadBalancer,
    });

    factory IoK8SApiCoreV1ServiceStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ServiceStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ServiceStatusToJson(this);
}


///Condition contains details for one aspect of the current state of this API Resource.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1Condition {
    
    ///lastTransitionTime is the last time the condition transitioned from one status to
    ///another. This should be when the underlying condition changed.  If that is not known,
    ///then using the time when the API field changed is acceptable.
    @JsonKey(name: "lastTransitionTime")
    DateTime lastTransitionTime;
    
    ///message is a human readable message indicating details about the transition. This may be
    ///an empty string.
    @JsonKey(name: "message")
    String message;
    
    ///observedGeneration represents the .metadata.generation that the condition was set based
    ///upon. For instance, if .metadata.generation is currently 12, but the
    ///.status.conditions[x].observedGeneration is 9, the condition is out of date with respect
    ///to the current state of the instance.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///reason contains a programmatic identifier indicating the reason for the condition's last
    ///transition. Producers of specific condition types may define expected values and meanings
    ///for this field, and whether the values are considered a guaranteed API. The value should
    ///be a CamelCase string. This field may not be empty.
    @JsonKey(name: "reason")
    String reason;
    
    ///status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///type of condition in CamelCase or in foo.example.com/CamelCase.
    @JsonKey(name: "type")
    String type;

    IoK8SApimachineryPkgApisMetaV1Condition({
        required this.lastTransitionTime,
        required this.message,
        this.observedGeneration,
        required this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApimachineryPkgApisMetaV1Condition.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(this);
}


///LoadBalancer contains the current status of the load-balancer, if one is present.
///
///LoadBalancerStatus represents the status of a load-balancer.
@JsonSerializable()
class IoK8SApiCoreV1LoadBalancerStatus {
    
    ///Ingress is a list containing ingress points for the load-balancer. Traffic intended for
    ///the service should be sent to these ingress points.
    @JsonKey(name: "ingress")
    List<IoK8SApiCoreV1LoadBalancerIngress>? ingress;

    IoK8SApiCoreV1LoadBalancerStatus({
        this.ingress,
    });

    factory IoK8SApiCoreV1LoadBalancerStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LoadBalancerStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LoadBalancerStatusToJson(this);
}


///LoadBalancerIngress represents the status of a load-balancer ingress point: traffic
///intended for the service should be sent to an ingress point.
@JsonSerializable()
class IoK8SApiCoreV1LoadBalancerIngress {
    
    ///Hostname is set for load-balancer ingress points that are DNS based (typically AWS
    ///load-balancers)
    @JsonKey(name: "hostname")
    String? hostname;
    
    ///IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack
    ///load-balancers)
    @JsonKey(name: "ip")
    String? ip;
    
    ///IPMode specifies how the load-balancer IP behaves, and may only be specified when the ip
    ///field is specified. Setting this to "VIP" indicates that traffic is delivered to the node
    ///with the destination set to the load-balancer's IP and port. Setting this to "Proxy"
    ///indicates that traffic is delivered to the node or pod with the destination set to the
    ///node's IP and node port or the pod's IP and port. Service implementations may use this
    ///information to adjust traffic routing.
    @JsonKey(name: "ipMode")
    String? ipMode;
    
    ///Ports is a list of records of service ports If used, every port defined in the service
    ///should have an entry in it
    @JsonKey(name: "ports")
    List<IoK8SApiCoreV1PortStatus>? ports;

    IoK8SApiCoreV1LoadBalancerIngress({
        this.hostname,
        this.ip,
        this.ipMode,
        this.ports,
    });

    factory IoK8SApiCoreV1LoadBalancerIngress.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LoadBalancerIngressFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LoadBalancerIngressToJson(this);
}

@JsonSerializable()
class IoK8SApiCoreV1PortStatus {
    
    ///Error is to record the problem with the service port The format of the error shall comply
    ///with the following rules: - built-in error values shall be specified in this file and
    ///those shall use
    ///CamelCase names
    ///- cloud provider specific error values must have names that comply with the
    ///format foo.example.com/CamelCase.
    @JsonKey(name: "error")
    String? error;
    
    ///Port is the port number of the service port of which status is recorded here
    @JsonKey(name: "port")
    int port;
    
    ///Protocol is the protocol of the service port of which status is recorded here The
    ///supported values are: "TCP", "UDP", "SCTP"
    @JsonKey(name: "protocol")
    String protocol;

    IoK8SApiCoreV1PortStatus({
        this.error,
        required this.port,
        required this.protocol,
    });

    factory IoK8SApiCoreV1PortStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PortStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PortStatusToJson(this);
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
