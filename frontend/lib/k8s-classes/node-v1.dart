import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'node_v1.g.dart';


///Node is a worker node in Kubernetes. Each node will have a unique identifier in the cache
///(i.e. in etcd).
@JsonSerializable()
class NodeV1 {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    ApiVersion? apiVersion;
    
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
    
    ///Spec defines the behavior of a node.
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "spec")
    IoK8SApiCoreV1NodeSpec? spec;
    
    ///Most recently observed status of the node. Populated by the system. Read-only. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "status")
    IoK8SApiCoreV1NodeStatus? status;

    NodeV1({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
        this.status,
    });

    factory NodeV1.fromJson(Map<String, dynamic> json) => _$NodeV1FromJson(json);

    Map<String, dynamic> toJson() => _$NodeV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("v1")
    V1
}

final apiVersionValues = EnumValues({
    "v1": ApiVersion.V1
});


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("Node")
    NODE
}

final kindValues = EnumValues({
    "Node": Kind.NODE
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


///Spec defines the behavior of a node.
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///NodeSpec describes the attributes that a node is created with.
@JsonSerializable()
class IoK8SApiCoreV1NodeSpec {
    
    ///Deprecated: Previously used to specify the source of the node's configuration for the
    ///DynamicKubeletConfig feature. This feature is removed.
    @JsonKey(name: "configSource")
    IoK8SApiCoreV1NodeConfigSource? configSource;
    
    ///Deprecated. Not all kubelets will set this field. Remove field after 1.13. see:
    ///https://issues.k8s.io/61966
    @JsonKey(name: "externalID")
    String? externalId;
    
    ///PodCIDR represents the pod IP range assigned to the node.
    @JsonKey(name: "podCIDR")
    String? podCidr;
    
    ///podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If
    ///this field is specified, the 0th entry must match the podCIDR field. It may contain at
    ///most 1 value for each of IPv4 and IPv6.
    @JsonKey(name: "podCIDRs")
    List<String>? podCidRs;
    
    ///ID of the node assigned by the cloud provider in the format:
    ///<ProviderName>://<ProviderSpecificNodeID>
    @JsonKey(name: "providerID")
    String? providerId;
    
    ///If specified, the node's taints.
    @JsonKey(name: "taints")
    List<IoK8SApiCoreV1Taint>? taints;
    
    ///Unschedulable controls node schedulability of new pods. By default, node is schedulable.
    ///More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
    @JsonKey(name: "unschedulable")
    bool? unschedulable;

    IoK8SApiCoreV1NodeSpec({
        this.configSource,
        this.externalId,
        this.podCidr,
        this.podCidRs,
        this.providerId,
        this.taints,
        this.unschedulable,
    });

    factory IoK8SApiCoreV1NodeSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSpecToJson(this);
}


///Deprecated: Previously used to specify the source of the node's configuration for the
///DynamicKubeletConfig feature. This feature is removed.
///
///NodeConfigSource specifies a source of node configuration. Exactly one subfield
///(excluding metadata) must be non-nil. This API is deprecated since 1.22
///
///Active reports the checkpointed config the node is actively using. Active will represent
///either the current version of the Assigned config, or the current LastKnownGood config,
///depending on whether attempting to use the Assigned config results in an error.
///
///Assigned reports the checkpointed config the node will try to use. When
///Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to
///local disk, along with a record indicating intended config. The node refers to this
///record to choose its config checkpoint, and reports this record in Assigned. Assigned
///only updates in the status after the record has been checkpointed to disk. When the
///Kubelet is restarted, it tries to make the Assigned config the Active config by loading
///and validating the checkpointed payload identified by Assigned.
///
///LastKnownGood reports the checkpointed config the node will fall back to when it
///encounters an error attempting to use the Assigned config. The Assigned config becomes
///the LastKnownGood config when the node determines that the Assigned config is stable and
///correct. This is currently implemented as a 10-minute soak period starting when the local
///record of Assigned config is updated. If the Assigned config is Active at the end of this
///period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use
///local defaults), the LastKnownGood is also immediately reset to nil, because the local
///default config is always assumed good. You should not make assumptions about the node's
///method of determining config stability and correctness, as this may change or become
///configurable in the future.
@JsonSerializable()
class IoK8SApiCoreV1NodeConfigSource {
    
    ///ConfigMap is a reference to a Node's ConfigMap
    @JsonKey(name: "configMap")
    IoK8SApiCoreV1ConfigMapNodeConfigSource? configMap;

    IoK8SApiCoreV1NodeConfigSource({
        this.configMap,
    });

    factory IoK8SApiCoreV1NodeConfigSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeConfigSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeConfigSourceToJson(this);
}


///ConfigMap is a reference to a Node's ConfigMap
///
///ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config
///source for the Node. This API is deprecated since 1.22:
///https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapNodeConfigSource {
    
    ///KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the
    ///KubeletConfiguration structure This field is required in all cases.
    @JsonKey(name: "kubeletConfigKey")
    String kubeletConfigKey;
    
    ///Name is the metadata.name of the referenced ConfigMap. This field is required in all
    ///cases.
    @JsonKey(name: "name")
    String name;
    
    ///Namespace is the metadata.namespace of the referenced ConfigMap. This field is required
    ///in all cases.
    @JsonKey(name: "namespace")
    String namespace;
    
    ///ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field
    ///is forbidden in Node.Spec, and required in Node.Status.
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in
    ///Node.Spec, and required in Node.Status.
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApiCoreV1ConfigMapNodeConfigSource({
        required this.kubeletConfigKey,
        required this.name,
        required this.namespace,
        this.resourceVersion,
        this.uid,
    });

    factory IoK8SApiCoreV1ConfigMapNodeConfigSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapNodeConfigSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapNodeConfigSourceToJson(this);
}


///The node this Taint is attached to has the "effect" on any pod that does not tolerate the
///Taint.
@JsonSerializable()
class IoK8SApiCoreV1Taint {
    
    ///Required. The effect of the taint on pods that do not tolerate the taint. Valid effects
    ///are NoSchedule, PreferNoSchedule and NoExecute.
    @JsonKey(name: "effect")
    String effect;
    
    ///Required. The taint key to be applied to a node.
    @JsonKey(name: "key")
    String key;
    
    ///TimeAdded represents the time at which the taint was added. It is only written for
    ///NoExecute taints.
    @JsonKey(name: "timeAdded")
    DateTime? timeAdded;
    
    ///The taint value corresponding to the taint key.
    @JsonKey(name: "value")
    String? value;

    IoK8SApiCoreV1Taint({
        required this.effect,
        required this.key,
        this.timeAdded,
        this.value,
    });

    factory IoK8SApiCoreV1Taint.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TaintFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TaintToJson(this);
}


///Most recently observed status of the node. Populated by the system. Read-only. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///NodeStatus is information about the current status of a node.
@JsonSerializable()
class IoK8SApiCoreV1NodeStatus {
    
    ///List of addresses reachable to the node. Queried from cloud provider, if available. More
    ///info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is
    ///declared as mergeable, but the merge key is not sufficiently unique, which can cause data
    ///corruption when it is merged. Callers should instead use a full-replacement patch. See
    ///https://pr.k8s.io/79391 for an example. Consumers should assume that addresses can change
    ///during the lifetime of a Node. However, there are some exceptions where this may not be
    ///possible, such as Pods that inherit a Node's address in its own status or consumers of
    ///the downward API (status.hostIP).
    @JsonKey(name: "addresses")
    List<IoK8SApiCoreV1NodeAddress>? addresses;
    
    ///Allocatable represents the resources of a node that are available for scheduling.
    ///Defaults to Capacity.
    @JsonKey(name: "allocatable")
    Map<String, dynamic>? allocatable;
    
    ///Capacity represents the total resources of a node. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
    @JsonKey(name: "capacity")
    Map<String, dynamic>? capacity;
    
    ///Conditions is an array of current observed node conditions. More info:
    ///https://kubernetes.io/docs/concepts/nodes/node/#condition
    @JsonKey(name: "conditions")
    List<IoK8SApiCoreV1NodeCondition>? conditions;
    
    ///Status of the config assigned to the node via the dynamic Kubelet config feature.
    @JsonKey(name: "config")
    IoK8SApiCoreV1NodeConfigStatus? config;
    
    ///Endpoints of daemons running on the Node.
    @JsonKey(name: "daemonEndpoints")
    IoK8SApiCoreV1NodeDaemonEndpoints? daemonEndpoints;
    
    ///List of container images on this node
    @JsonKey(name: "images")
    List<IoK8SApiCoreV1ContainerImage>? images;
    
    ///Set of ids/uuids to uniquely identify the node. More info:
    ///https://kubernetes.io/docs/concepts/nodes/node/#info
    @JsonKey(name: "nodeInfo")
    IoK8SApiCoreV1NodeSystemInfo? nodeInfo;
    
    ///NodePhase is the recently observed lifecycle phase of the node. More info:
    ///https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and
    ///now is deprecated.
    @JsonKey(name: "phase")
    String? phase;
    
    ///The available runtime handlers.
    @JsonKey(name: "runtimeHandlers")
    List<IoK8SApiCoreV1NodeRuntimeHandler>? runtimeHandlers;
    
    ///List of volumes that are attached to the node.
    @JsonKey(name: "volumesAttached")
    List<IoK8SApiCoreV1AttachedVolume>? volumesAttached;
    
    ///List of attachable volumes in use (mounted) by the node.
    @JsonKey(name: "volumesInUse")
    List<String>? volumesInUse;

    IoK8SApiCoreV1NodeStatus({
        this.addresses,
        this.allocatable,
        this.capacity,
        this.conditions,
        this.config,
        this.daemonEndpoints,
        this.images,
        this.nodeInfo,
        this.phase,
        this.runtimeHandlers,
        this.volumesAttached,
        this.volumesInUse,
    });

    factory IoK8SApiCoreV1NodeStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeStatusToJson(this);
}


///NodeAddress contains information for the node's address.
@JsonSerializable()
class IoK8SApiCoreV1NodeAddress {
    
    ///The node address.
    @JsonKey(name: "address")
    String address;
    
    ///Node address type, one of Hostname, ExternalIP or InternalIP.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1NodeAddress({
        required this.address,
        required this.type,
    });

    factory IoK8SApiCoreV1NodeAddress.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeAddressFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeAddressToJson(this);
}


///NodeCondition contains condition information for a node.
@JsonSerializable()
class IoK8SApiCoreV1NodeCondition {
    
    ///Last time we got an update on a given condition.
    @JsonKey(name: "lastHeartbeatTime")
    DateTime? lastHeartbeatTime;
    
    ///Last time the condition transit from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///Human readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///(brief) reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///Type of node condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1NodeCondition({
        this.lastHeartbeatTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiCoreV1NodeCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeConditionToJson(this);
}


///Status of the config assigned to the node via the dynamic Kubelet config feature.
///
///NodeConfigStatus describes the status of the config assigned by Node.Spec.ConfigSource.
@JsonSerializable()
class IoK8SApiCoreV1NodeConfigStatus {
    
    ///Active reports the checkpointed config the node is actively using. Active will represent
    ///either the current version of the Assigned config, or the current LastKnownGood config,
    ///depending on whether attempting to use the Assigned config results in an error.
    @JsonKey(name: "active")
    IoK8SApiCoreV1NodeConfigSource? active;
    
    ///Assigned reports the checkpointed config the node will try to use. When
    ///Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to
    ///local disk, along with a record indicating intended config. The node refers to this
    ///record to choose its config checkpoint, and reports this record in Assigned. Assigned
    ///only updates in the status after the record has been checkpointed to disk. When the
    ///Kubelet is restarted, it tries to make the Assigned config the Active config by loading
    ///and validating the checkpointed payload identified by Assigned.
    @JsonKey(name: "assigned")
    IoK8SApiCoreV1NodeConfigSource? assigned;
    
    ///Error describes any problems reconciling the Spec.ConfigSource to the Active config.
    ///Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local
    ///Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource,
    ///attempting to load or validate the Assigned config, etc. Errors may occur at different
    ///points while syncing config. Earlier errors (e.g. download or checkpointing errors) will
    ///not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later
    ///errors (e.g. loading or validating a checkpointed config) will result in a rollback to
    ///LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing
    ///the config assigned in Spec.ConfigSource. You can find additional information for
    ///debugging by searching the error message in the Kubelet log. Error is a human-readable
    ///description of the error state; machines can check whether or not Error is empty, but
    ///should not rely on the stability of the Error text across Kubelet versions.
    @JsonKey(name: "error")
    String? error;
    
    ///LastKnownGood reports the checkpointed config the node will fall back to when it
    ///encounters an error attempting to use the Assigned config. The Assigned config becomes
    ///the LastKnownGood config when the node determines that the Assigned config is stable and
    ///correct. This is currently implemented as a 10-minute soak period starting when the local
    ///record of Assigned config is updated. If the Assigned config is Active at the end of this
    ///period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use
    ///local defaults), the LastKnownGood is also immediately reset to nil, because the local
    ///default config is always assumed good. You should not make assumptions about the node's
    ///method of determining config stability and correctness, as this may change or become
    ///configurable in the future.
    @JsonKey(name: "lastKnownGood")
    IoK8SApiCoreV1NodeConfigSource? lastKnownGood;

    IoK8SApiCoreV1NodeConfigStatus({
        this.active,
        this.assigned,
        this.error,
        this.lastKnownGood,
    });

    factory IoK8SApiCoreV1NodeConfigStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeConfigStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeConfigStatusToJson(this);
}


///Endpoints of daemons running on the Node.
///
///NodeDaemonEndpoints lists ports opened by daemons running on the Node.
@JsonSerializable()
class IoK8SApiCoreV1NodeDaemonEndpoints {
    
    ///Endpoint on which Kubelet is listening.
    @JsonKey(name: "kubeletEndpoint")
    IoK8SApiCoreV1DaemonEndpoint? kubeletEndpoint;

    IoK8SApiCoreV1NodeDaemonEndpoints({
        this.kubeletEndpoint,
    });

    factory IoK8SApiCoreV1NodeDaemonEndpoints.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeDaemonEndpointsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeDaemonEndpointsToJson(this);
}


///Endpoint on which Kubelet is listening.
///
///DaemonEndpoint contains information about a single Daemon endpoint.
@JsonSerializable()
class IoK8SApiCoreV1DaemonEndpoint {
    
    ///Port number of the given endpoint.
    @JsonKey(name: "Port")
    int port;

    IoK8SApiCoreV1DaemonEndpoint({
        required this.port,
    });

    factory IoK8SApiCoreV1DaemonEndpoint.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DaemonEndpointFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DaemonEndpointToJson(this);
}


///Describe a container image
@JsonSerializable()
class IoK8SApiCoreV1ContainerImage {
    
    ///Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7",
    ///"cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
    @JsonKey(name: "names")
    List<String>? names;
    
    ///The size of the image in bytes.
    @JsonKey(name: "sizeBytes")
    int? sizeBytes;

    IoK8SApiCoreV1ContainerImage({
        this.names,
        this.sizeBytes,
    });

    factory IoK8SApiCoreV1ContainerImage.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerImageFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerImageToJson(this);
}


///Set of ids/uuids to uniquely identify the node. More info:
///https://kubernetes.io/docs/concepts/nodes/node/#info
///
///NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
@JsonSerializable()
class IoK8SApiCoreV1NodeSystemInfo {
    
    ///The Architecture reported by the node
    @JsonKey(name: "architecture")
    String architecture;
    
    ///Boot ID reported by the node.
    @JsonKey(name: "bootID")
    String bootId;
    
    ///ContainerRuntime Version reported by the node through runtime remote API (e.g.
    ///containerd://1.4.2).
    @JsonKey(name: "containerRuntimeVersion")
    String containerRuntimeVersion;
    
    ///Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
    @JsonKey(name: "kernelVersion")
    String kernelVersion;
    
    ///Kubelet Version reported by the node.
    @JsonKey(name: "kubeletVersion")
    String kubeletVersion;
    
    ///KubeProxy Version reported by the node.
    @JsonKey(name: "kubeProxyVersion")
    String kubeProxyVersion;
    
    ///MachineID reported by the node. For unique machine identification in the cluster this
    ///field is preferred. Learn more from man(5) machine-id:
    ///http://man7.org/linux/man-pages/man5/machine-id.5.html
    @JsonKey(name: "machineID")
    String machineId;
    
    ///The Operating System reported by the node
    @JsonKey(name: "operatingSystem")
    String operatingSystem;
    
    ///OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
    @JsonKey(name: "osImage")
    String osImage;
    
    ///SystemUUID reported by the node. For unique machine identification MachineID is
    ///preferred. This field is specific to Red Hat hosts
    ///https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
    @JsonKey(name: "systemUUID")
    String systemUuid;

    IoK8SApiCoreV1NodeSystemInfo({
        required this.architecture,
        required this.bootId,
        required this.containerRuntimeVersion,
        required this.kernelVersion,
        required this.kubeletVersion,
        required this.kubeProxyVersion,
        required this.machineId,
        required this.operatingSystem,
        required this.osImage,
        required this.systemUuid,
    });

    factory IoK8SApiCoreV1NodeSystemInfo.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSystemInfoFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSystemInfoToJson(this);
}


///NodeRuntimeHandler is a set of runtime handler information.
@JsonSerializable()
class IoK8SApiCoreV1NodeRuntimeHandler {
    
    ///Supported features.
    @JsonKey(name: "features")
    IoK8SApiCoreV1NodeRuntimeHandlerFeatures? features;
    
    ///Runtime handler name. Empty for the default runtime handler.
    @JsonKey(name: "name")
    String? name;

    IoK8SApiCoreV1NodeRuntimeHandler({
        this.features,
        this.name,
    });

    factory IoK8SApiCoreV1NodeRuntimeHandler.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeRuntimeHandlerFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeRuntimeHandlerToJson(this);
}


///Supported features.
///
///NodeRuntimeHandlerFeatures is a set of runtime features.
@JsonSerializable()
class IoK8SApiCoreV1NodeRuntimeHandlerFeatures {
    
    ///RecursiveReadOnlyMounts is set to true if the runtime handler supports
    ///RecursiveReadOnlyMounts.
    @JsonKey(name: "recursiveReadOnlyMounts")
    bool? recursiveReadOnlyMounts;

    IoK8SApiCoreV1NodeRuntimeHandlerFeatures({
        this.recursiveReadOnlyMounts,
    });

    factory IoK8SApiCoreV1NodeRuntimeHandlerFeatures.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesToJson(this);
}


///AttachedVolume describes a volume attached to a node
@JsonSerializable()
class IoK8SApiCoreV1AttachedVolume {
    
    ///DevicePath represents the device path where the volume should be available
    @JsonKey(name: "devicePath")
    String devicePath;
    
    ///Name of the attached volume
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1AttachedVolume({
        required this.devicePath,
        required this.name,
    });

    factory IoK8SApiCoreV1AttachedVolume.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AttachedVolumeFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AttachedVolumeToJson(this);
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
