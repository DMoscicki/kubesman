import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'csidriverlist_storage_v1.g.dart';


///CSIDriverList is a collection of CSIDriver objects.
@JsonSerializable()
class CsidriverlistStorageV1 {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    ApiVersion? apiVersion;
    
    ///items is the list of CSIDriver
    @JsonKey(name: "items")
    List<IoK8SApiStorageV1CsiDriver>? items;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    CsidriverlistStorageV1Kind? kind;
    
    ///Standard list metadata More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ListMeta? metadata;

    CsidriverlistStorageV1({
        this.apiVersion,
        required this.items,
        this.kind,
        this.metadata,
    });

    factory CsidriverlistStorageV1.fromJson(Map<String, dynamic> json) => _$CsidriverlistStorageV1FromJson(json);

    Map<String, dynamic> toJson() => _$CsidriverlistStorageV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("storage.k8s.io/v1")
    STORAGE_K8_S_IO_V1
}

final apiVersionValues = EnumValues({
    "storage.k8s.io/v1": ApiVersion.STORAGE_K8_S_IO_V1
});


///CSIDriver captures information about a Container Storage Interface (CSI) volume driver
///deployed on the cluster. Kubernetes attach detach controller uses this object to
///determine whether attach is required. Kubelet uses this object to determine whether pod
///information needs to be passed on mount. CSIDriver objects are non-namespaced.
@JsonSerializable()
class IoK8SApiStorageV1CsiDriver {
    
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
    ItemKind? kind;
    
    ///Standard object metadata. metadata.Name indicates the name of the CSI driver that this
    ///object refers to; it MUST be the same name returned by the CSI GetPluginName() call for
    ///that driver. The driver name must be 63 characters or less, beginning and ending with an
    ///alphanumeric character ([a-z0-9A-Z]) with dashes (-), dots (.), and alphanumerics
    ///between. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///spec represents the specification of the CSI Driver.
    @JsonKey(name: "spec")
    IoK8SApiStorageV1CsiDriverSpec spec;

    IoK8SApiStorageV1CsiDriver({
        this.apiVersion,
        this.kind,
        this.metadata,
        required this.spec,
    });

    factory IoK8SApiStorageV1CsiDriver.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1CsiDriverFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1CsiDriverToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum ItemKind {
    @JsonValue("CSIDriver")
    CSI_DRIVER
}

final itemKindValues = EnumValues({
    "CSIDriver": ItemKind.CSI_DRIVER
});


///Standard object metadata. metadata.Name indicates the name of the CSI driver that this
///object refers to; it MUST be the same name returned by the CSI GetPluginName() call for
///that driver. The driver name must be 63 characters or less, beginning and ending with an
///alphanumeric character ([a-z0-9A-Z]) with dashes (-), dots (.), and alphanumerics
///between. More info:
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


///spec represents the specification of the CSI Driver.
///
///CSIDriverSpec is the specification of a CSIDriver.
@JsonSerializable()
class IoK8SApiStorageV1CsiDriverSpec {
    
    ///attachRequired indicates this CSI volume driver requires an attach operation (because it
    ///implements the CSI ControllerPublishVolume() method), and that the Kubernetes attach
    ///detach controller should call the attach volume interface which checks the
    ///volumeattachment status and waits until the volume is attached before proceeding to
    ///mounting. The CSI external-attacher coordinates with CSI volume driver and updates the
    ///volumeattachment status when the attach operation is complete. If the CSIDriverRegistry
    ///feature gate is enabled and the value is specified to false, the attach operation will be
    ///skipped. Otherwise the attach operation will be called.
    ///
    ///This field is immutable.
    @JsonKey(name: "attachRequired")
    bool? attachRequired;
    
    ///fsGroupPolicy defines if the underlying volume supports changing ownership and permission
    ///of the volume before being mounted. Refer to the specific FSGroupPolicy values for
    ///additional details.
    ///
    ///This field was immutable in Kubernetes < 1.29 and now is mutable.
    ///
    ///Defaults to ReadWriteOnceWithFSType, which will examine each volume to determine if
    ///Kubernetes should modify ownership and permissions of the volume. With the default policy
    ///the defined fsGroup will only be applied if a fstype is defined and the volume's access
    ///mode contains ReadWriteOnce.
    @JsonKey(name: "fsGroupPolicy")
    String? fsGroupPolicy;
    
    ///podInfoOnMount indicates this CSI volume driver requires additional pod information (like
    ///podName, podUID, etc.) during mount operations, if set to true. If set to false, pod
    ///information will not be passed on mount. Default is false.
    ///
    ///The CSI driver specifies podInfoOnMount as part of driver deployment. If true, Kubelet
    ///will pass pod information as VolumeContext in the CSI NodePublishVolume() calls. The CSI
    ///driver is responsible for parsing and validating the information passed in as
    ///VolumeContext.
    ///
    ///The following VolumeContext will be passed if podInfoOnMount is set to true. This list
    ///might grow, but the prefix will be used. "csi.storage.k8s.io/pod.name": pod.Name
    ///"csi.storage.k8s.io/pod.namespace": pod.Namespace "csi.storage.k8s.io/pod.uid":
    ///string(pod.UID) "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral
    ///inline volume
    ///defined by a CSIVolumeSource, otherwise "false"
    ///
    ///"csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only required
    ///for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode.
    ///Other drivers can leave pod info disabled and/or ignore this field. As Kubernetes 1.15
    ///doesn't support this field, drivers can only support one mode when deployed on such a
    ///cluster and the deployment determines which mode that is, for example via a command line
    ///parameter of the driver.
    ///
    ///This field was immutable in Kubernetes < 1.29 and now is mutable.
    @JsonKey(name: "podInfoOnMount")
    bool? podInfoOnMount;
    
    ///requiresRepublish indicates the CSI driver wants `NodePublishVolume` being periodically
    ///called to reflect any possible change in the mounted volume. This field defaults to
    ///false.
    ///
    ///Note: After a successful initial NodePublishVolume call, subsequent calls to
    ///NodePublishVolume should only update the contents of the volume. New mount points will
    ///not be seen by a running container.
    @JsonKey(name: "requiresRepublish")
    bool? requiresRepublish;
    
    ///seLinuxMount specifies if the CSI driver supports "-o context" mount option.
    ///
    ///When "true", the CSI driver must ensure that all volumes provided by this CSI driver can
    ///be mounted separately with different `-o context` options. This is typical for storage
    ///backends that provide volumes as filesystems on block devices or as independent shared
    ///volumes. Kubernetes will call NodeStage / NodePublish with "-o context=xyz" mount option
    ///when mounting a ReadWriteOncePod volume used in Pod that has explicitly set SELinux
    ///context. In the future, it may be expanded to other volume AccessModes. In any case,
    ///Kubernetes will ensure that the volume is mounted only with a single SELinux context.
    ///
    ///When "false", Kubernetes won't pass any special SELinux mount options to the driver. This
    ///is typical for volumes that represent subdirectories of a bigger shared filesystem.
    ///
    ///Default is "false".
    @JsonKey(name: "seLinuxMount")
    bool? seLinuxMount;
    
    ///storageCapacity indicates that the CSI volume driver wants pod scheduling to consider the
    ///storage capacity that the driver deployment will report by creating CSIStorageCapacity
    ///objects with capacity information, if set to true.
    ///
    ///The check can be enabled immediately when deploying a driver. In that case, provisioning
    ///new volumes with late binding will pause until the driver deployment has published some
    ///suitable CSIStorageCapacity object.
    ///
    ///Alternatively, the driver can be deployed with the field unset or false and it can be
    ///flipped later when storage capacity information has been published.
    ///
    ///This field was immutable in Kubernetes <= 1.22 and now is mutable.
    @JsonKey(name: "storageCapacity")
    bool? storageCapacity;
    
    ///tokenRequests indicates the CSI driver needs pods' service account tokens it is mounting
    ///volume for to do necessary authentication. Kubelet will pass the tokens in VolumeContext
    ///in the CSI NodePublishVolume calls. The CSI driver should parse and validate the
    ///following VolumeContext: "csi.storage.k8s.io/serviceAccount.tokens": {
    ///"<audience>": {
    ///"token": <token>,
    ///"expirationTimestamp": <expiration timestamp in RFC3339>,
    ///},
    ///...
    ///}
    ///
    ///Note: Audience in each TokenRequest should be different and at most one token is empty
    ///string. To receive a new token after expiry, RequiresRepublish can be used to trigger
    ///NodePublishVolume periodically.
    @JsonKey(name: "tokenRequests")
    List<IoK8SApiStorageV1TokenRequest>? tokenRequests;
    
    ///volumeLifecycleModes defines what kind of volumes this CSI volume driver supports. The
    ///default if the list is empty is "Persistent", which is the usage defined by the CSI
    ///specification and implemented in Kubernetes via the usual PV/PVC mechanism.
    ///
    ///The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod
    ///spec with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod. A
    ///driver has to be aware of this because it is only going to get a NodePublishVolume call
    ///for such a volume.
    ///
    ///For more information about implementing this mode, see
    ///https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html A driver can support
    ///one or more of these modes and more modes may be added in the future.
    ///
    ///This field is beta. This field is immutable.
    @JsonKey(name: "volumeLifecycleModes")
    List<String>? volumeLifecycleModes;

    IoK8SApiStorageV1CsiDriverSpec({
        this.attachRequired,
        this.fsGroupPolicy,
        this.podInfoOnMount,
        this.requiresRepublish,
        this.seLinuxMount,
        this.storageCapacity,
        this.tokenRequests,
        this.volumeLifecycleModes,
    });

    factory IoK8SApiStorageV1CsiDriverSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1CsiDriverSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1CsiDriverSpecToJson(this);
}


///TokenRequest contains parameters of a service account token.
@JsonSerializable()
class IoK8SApiStorageV1TokenRequest {
    
    ///audience is the intended audience of the token in "TokenRequestSpec". It will default to
    ///the audiences of kube apiserver.
    @JsonKey(name: "audience")
    String audience;
    
    ///expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has
    ///the same default value of "ExpirationSeconds" in "TokenRequestSpec".
    @JsonKey(name: "expirationSeconds")
    int? expirationSeconds;

    IoK8SApiStorageV1TokenRequest({
        required this.audience,
        this.expirationSeconds,
    });

    factory IoK8SApiStorageV1TokenRequest.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1TokenRequestFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1TokenRequestToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum CsidriverlistStorageV1Kind {
    @JsonValue("CSIDriverList")
    CSI_DRIVER_LIST
}

final csidriverlistStorageV1KindValues = EnumValues({
    "CSIDriverList": CsidriverlistStorageV1Kind.CSI_DRIVER_LIST
});


///Standard list metadata More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
///
///ListMeta describes metadata that synthetic resources must have, including lists and
///various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1ListMeta {
    
    ///continue may be set if the user set a limit on the number of items returned, and
    ///indicates that the server has more data available. The value is opaque and may be used to
    ///issue another request to the endpoint that served this list to retrieve the next set of
    ///available objects. Continuing a consistent list may not be possible if the server
    ///configuration has changed or more than a few minutes have passed. The resourceVersion
    ///field returned when using this continue value will be identical to the value in the first
    ///response, unless you have received this token from an error message.
    @JsonKey(name: "continue")
    String? ioK8SApimachineryPkgApisMetaV1ListMetaContinue;
    
    ///remainingItemCount is the number of subsequent items in the list which are not included
    ///in this list response. If the list request contained label or field selectors, then the
    ///number of remaining items is unknown and the field will be left unset and omitted during
    ///serialization. If the list is complete (either because it is not chunking or because this
    ///is the last chunk), then there are no more remaining items and this field will be left
    ///unset and omitted during serialization. Servers older than v1.15 do not set this field.
    ///The intended use of the remainingItemCount is *estimating* the size of a collection.
    ///Clients should not rely on the remainingItemCount to be set or to be exact.
    @JsonKey(name: "remainingItemCount")
    int? remainingItemCount;
    
    ///String that identifies the server's internal version of this object that can be used by
    ///clients to determine when objects have changed. Value must be treated as opaque by
    ///clients and passed unmodified back to the server. Populated by the system. Read-only.
    ///More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Deprecated: selfLink is a legacy read-only field that is no longer populated by the
    ///system.
    @JsonKey(name: "selfLink")
    String? selfLink;

    IoK8SApimachineryPkgApisMetaV1ListMeta({
        this.ioK8SApimachineryPkgApisMetaV1ListMetaContinue,
        this.remainingItemCount,
        this.resourceVersion,
        this.selfLink,
    });

    factory IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ListMetaFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ListMetaToJson(this);
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
