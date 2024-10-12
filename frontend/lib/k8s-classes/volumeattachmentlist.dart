import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumeattachmentlist.g.dart';


///VolumeAttachmentList is a collection of VolumeAttachment objects.
@JsonSerializable()
class Volumeattachmentlist {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///items is the list of VolumeAttachments
    @JsonKey(name: "items")
    List<IoK8SApiStorageV1VolumeAttachment>? items;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    VolumeattachmentlistKind? kind;
    
    ///Standard list metadata More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    Metadata? metadata;

    Volumeattachmentlist({
        this.apiVersion,
        required this.items,
        this.kind,
        this.metadata,
    });

    factory Volumeattachmentlist.fromJson(Map<String, dynamic> json) => _$VolumeattachmentlistFromJson(json);

    Map<String, dynamic> toJson() => _$VolumeattachmentlistToJson(this);
}


///VolumeAttachment captures the intent to attach or detach the specified volume to/from the
///specified node.
///
///VolumeAttachment objects are non-namespaced.
@JsonSerializable()
class IoK8SApiStorageV1VolumeAttachment {
    
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
    
    ///Standard object metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///spec represents specification of the desired attach/detach volume behavior. Populated by
    ///the Kubernetes system.
    @JsonKey(name: "spec")
    IoK8SApiStorageV1VolumeAttachmentSpec spec;
    
    ///status represents status of the VolumeAttachment request. Populated by the entity
    ///completing the attach or detach operation, i.e. the external-attacher.
    @JsonKey(name: "status")
    IoK8SApiStorageV1VolumeAttachmentStatus? status;

    IoK8SApiStorageV1VolumeAttachment({
        this.apiVersion,
        this.kind,
        this.metadata,
        required this.spec,
        this.status,
    });

    factory IoK8SApiStorageV1VolumeAttachment.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1VolumeAttachmentFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1VolumeAttachmentToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum ItemKind {
    @JsonValue("VolumeAttachment")
    VOLUME_ATTACHMENT
}

final itemKindValues = EnumValues({
    "VolumeAttachment": ItemKind.VOLUME_ATTACHMENT
});


///Standard object metadata. More info:
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


///spec represents specification of the desired attach/detach volume behavior. Populated by
///the Kubernetes system.
///
///VolumeAttachmentSpec is the specification of a VolumeAttachment request.
@JsonSerializable()
class IoK8SApiStorageV1VolumeAttachmentSpec {
    
    ///attacher indicates the name of the volume driver that MUST handle this request. This is
    ///the name returned by GetPluginName().
    @JsonKey(name: "attacher")
    String attacher;
    
    ///nodeName represents the node that the volume should be attached to.
    @JsonKey(name: "nodeName")
    String nodeName;
    
    ///source represents the volume that should be attached.
    @JsonKey(name: "source")
    IoK8SApiStorageV1VolumeAttachmentSource source;

    IoK8SApiStorageV1VolumeAttachmentSpec({
        required this.attacher,
        required this.nodeName,
        required this.source,
    });

    factory IoK8SApiStorageV1VolumeAttachmentSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1VolumeAttachmentSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1VolumeAttachmentSpecToJson(this);
}


///source represents the volume that should be attached.
///
///VolumeAttachmentSource represents a volume that should be attached. Right now only
///PersistenVolumes can be attached via external attacher, in future we may allow also
///inline volumes in pods. Exactly one member can be set.
@JsonSerializable()
class IoK8SApiStorageV1VolumeAttachmentSource {
    
    ///inlineVolumeSpec contains all the information necessary to attach a persistent volume
    ///defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration
    ///feature. It contains translated fields from a pod's inline VolumeSource to a
    ///PersistentVolumeSpec. This field is beta-level and is only honored by servers that
    ///enabled the CSIMigration feature.
    @JsonKey(name: "inlineVolumeSpec")
    IoK8SApiCoreV1PersistentVolumeSpec? inlineVolumeSpec;
    
    ///persistentVolumeName represents the name of the persistent volume to attach.
    @JsonKey(name: "persistentVolumeName")
    String? persistentVolumeName;

    IoK8SApiStorageV1VolumeAttachmentSource({
        this.inlineVolumeSpec,
        this.persistentVolumeName,
    });

    factory IoK8SApiStorageV1VolumeAttachmentSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1VolumeAttachmentSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1VolumeAttachmentSourceToJson(this);
}


///inlineVolumeSpec contains all the information necessary to attach a persistent volume
///defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration
///feature. It contains translated fields from a pod's inline VolumeSource to a
///PersistentVolumeSpec. This field is beta-level and is only honored by servers that
///enabled the CSIMigration feature.
///
///PersistentVolumeSpec is the specification of a persistent volume.
@JsonSerializable()
class IoK8SApiCoreV1PersistentVolumeSpec {
    
    ///accessModes contains all ways the volume can be mounted. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
    @JsonKey(name: "accessModes")
    List<String>? accessModes;
    
    ///awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
    ///machine and then exposed to the pod. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "awsElasticBlockStore")
    IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource? awsElasticBlockStore;
    
    ///azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    @JsonKey(name: "azureDisk")
    IoK8SApiCoreV1AzureDiskVolumeSource? azureDisk;
    
    ///azureFile represents an Azure File Service mount on the host and bind mount to the pod.
    @JsonKey(name: "azureFile")
    IoK8SApiCoreV1AzureFilePersistentVolumeSource? azureFile;
    
    ///capacity is the description of the persistent volume's resources and capacity. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
    @JsonKey(name: "capacity")
    Map<String, dynamic>? capacity;
    
    ///cephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    @JsonKey(name: "cephfs")
    IoK8SApiCoreV1CephFsPersistentVolumeSource? cephfs;
    
    ///cinder represents a cinder volume attached and mounted on kubelets host machine. More
    ///info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "cinder")
    IoK8SApiCoreV1CinderPersistentVolumeSource? cinder;
    
    ///claimRef is part of a bi-directional binding between PersistentVolume and
    ///PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the
    ///authoritative bind between PV and PVC. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding
    @JsonKey(name: "claimRef")
    IoK8SApiCoreV1ObjectReference? claimRef;
    
    ///csi represents storage that is handled by an external CSI driver (Beta feature).
    @JsonKey(name: "csi")
    IoK8SApiCoreV1CsiPersistentVolumeSource? csi;
    
    ///fc represents a Fibre Channel resource that is attached to a kubelet's host machine and
    ///then exposed to the pod.
    @JsonKey(name: "fc")
    IoK8SApiCoreV1FcVolumeSource? fc;
    
    ///flexVolume represents a generic volume resource that is provisioned/attached using an
    ///exec based plugin.
    @JsonKey(name: "flexVolume")
    IoK8SApiCoreV1FlexPersistentVolumeSource? flexVolume;
    
    ///flocker represents a Flocker volume attached to a kubelet's host machine and exposed to
    ///the pod for its usage. This depends on the Flocker control service being running
    @JsonKey(name: "flocker")
    IoK8SApiCoreV1FlockerVolumeSource? flocker;
    
    ///gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host
    ///machine and then exposed to the pod. Provisioned by an admin. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "gcePersistentDisk")
    IoK8SApiCoreV1GcePersistentDiskVolumeSource? gcePersistentDisk;
    
    ///glusterfs represents a Glusterfs volume that is attached to a host and exposed to the
    ///pod. Provisioned by an admin. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md
    @JsonKey(name: "glusterfs")
    IoK8SApiCoreV1GlusterfsPersistentVolumeSource? glusterfs;
    
    ///hostPath represents a directory on the host. Provisioned by a developer or tester. This
    ///is useful for single-node development and testing only! On-host storage is not supported
    ///in any way and WILL NOT WORK in a multi-node cluster. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "hostPath")
    IoK8SApiCoreV1HostPathVolumeSource? hostPath;
    
    ///iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and
    ///then exposed to the pod. Provisioned by an admin.
    @JsonKey(name: "iscsi")
    IoK8SApiCoreV1IscsiPersistentVolumeSource? iscsi;
    
    ///local represents directly-attached storage with node affinity
    @JsonKey(name: "local")
    IoK8SApiCoreV1LocalVolumeSource? local;
    
    ///mountOptions is the list of mount options, e.g. ["ro", "soft"]. Not validated - mount
    ///will simply fail if one is invalid. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
    @JsonKey(name: "mountOptions")
    List<String>? mountOptions;
    
    ///nfs represents an NFS mount on the host. Provisioned by an admin. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "nfs")
    IoK8SApiCoreV1NfsVolumeSource? nfs;
    
    ///nodeAffinity defines constraints that limit what nodes this volume can be accessed from.
    ///This field influences the scheduling of pods that use this volume.
    @JsonKey(name: "nodeAffinity")
    IoK8SApiCoreV1VolumeNodeAffinity? nodeAffinity;
    
    ///persistentVolumeReclaimPolicy defines what happens to a persistent volume when released
    ///from its claim. Valid options are Retain (default for manually created
    ///PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and
    ///Recycle (deprecated). Recycle must be supported by the volume plugin underlying this
    ///PersistentVolume. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming
    @JsonKey(name: "persistentVolumeReclaimPolicy")
    String? persistentVolumeReclaimPolicy;
    
    ///photonPersistentDisk represents a PhotonController persistent disk attached and mounted
    ///on kubelets host machine
    @JsonKey(name: "photonPersistentDisk")
    IoK8SApiCoreV1PhotonPersistentDiskVolumeSource? photonPersistentDisk;
    
    ///portworxVolume represents a portworx volume attached and mounted on kubelets host machine
    @JsonKey(name: "portworxVolume")
    IoK8SApiCoreV1PortworxVolumeSource? portworxVolume;
    
    ///quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    @JsonKey(name: "quobyte")
    IoK8SApiCoreV1QuobyteVolumeSource? quobyte;
    
    ///rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More
    ///info: https://examples.k8s.io/volumes/rbd/README.md
    @JsonKey(name: "rbd")
    IoK8SApiCoreV1RbdPersistentVolumeSource? rbd;
    
    ///scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    @JsonKey(name: "scaleIO")
    IoK8SApiCoreV1ScaleIoPersistentVolumeSource? scaleIo;
    
    ///storageClassName is the name of StorageClass to which this persistent volume belongs.
    ///Empty value means that this volume does not belong to any StorageClass.
    @JsonKey(name: "storageClassName")
    String? storageClassName;
    
    ///storageOS represents a StorageOS volume that is attached to the kubelet's host machine
    ///and mounted into the pod More info: https://examples.k8s.io/volumes/storageos/README.md
    @JsonKey(name: "storageos")
    IoK8SApiCoreV1StorageOsPersistentVolumeSource? storageos;
    
    ///Name of VolumeAttributesClass to which this persistent volume belongs. Empty value is not
    ///allowed. When this field is not set, it indicates that this volume does not belong to any
    ///VolumeAttributesClass. This field is mutable and can be changed by the CSI driver after a
    ///volume has been updated successfully to a new class. For an unbound PersistentVolume, the
    ///volumeAttributesClassName will be matched with unbound PersistentVolumeClaims during the
    ///binding process. This is an alpha field and requires enabling VolumeAttributesClass
    ///feature.
    @JsonKey(name: "volumeAttributesClassName")
    String? volumeAttributesClassName;
    
    ///volumeMode defines if a volume is intended to be used with a formatted filesystem or to
    ///remain in raw block state. Value of Filesystem is implied when not included in spec.
    @JsonKey(name: "volumeMode")
    String? volumeMode;
    
    ///vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    @JsonKey(name: "vsphereVolume")
    IoK8SApiCoreV1VsphereVirtualDiskVolumeSource? vsphereVolume;

    IoK8SApiCoreV1PersistentVolumeSpec({
        this.accessModes,
        this.awsElasticBlockStore,
        this.azureDisk,
        this.azureFile,
        this.capacity,
        this.cephfs,
        this.cinder,
        this.claimRef,
        this.csi,
        this.fc,
        this.flexVolume,
        this.flocker,
        this.gcePersistentDisk,
        this.glusterfs,
        this.hostPath,
        this.iscsi,
        this.local,
        this.mountOptions,
        this.nfs,
        this.nodeAffinity,
        this.persistentVolumeReclaimPolicy,
        this.photonPersistentDisk,
        this.portworxVolume,
        this.quobyte,
        this.rbd,
        this.scaleIo,
        this.storageClassName,
        this.storageos,
        this.volumeAttributesClassName,
        this.volumeMode,
        this.vsphereVolume,
    });

    factory IoK8SApiCoreV1PersistentVolumeSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PersistentVolumeSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PersistentVolumeSpecToJson(this);
}


///awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
///machine and then exposed to the pod. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
///
///Represents a Persistent Disk resource in AWS.
///
///An AWS EBS disk must exist before mounting to a container. The disk must also be in the
///same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS
///EBS volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource {
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///partition is the partition in the volume that you want to mount. If omitted, the default
    ///is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as
    ///"1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property
    ///empty).
    @JsonKey(name: "partition")
    int? partition;
    
    ///readOnly value true will force the readOnly setting in VolumeMounts. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "volumeID")
    String volumeId;

    IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource({
        this.fsType,
        this.partition,
        this.readOnly,
        required this.volumeId,
    });

    factory IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AwsElasticBlockStoreVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AwsElasticBlockStoreVolumeSourceToJson(this);
}


///azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
///
///AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
@JsonSerializable()
class IoK8SApiCoreV1AzureDiskVolumeSource {
    
    ///cachingMode is the Host Caching mode: None, Read Only, Read Write.
    @JsonKey(name: "cachingMode")
    String? cachingMode;
    
    ///diskName is the Name of the data disk in the blob storage
    @JsonKey(name: "diskName")
    String diskName;
    
    ///diskURI is the URI of data disk in the blob storage
    @JsonKey(name: "diskURI")
    String diskUri;
    
    ///fsType is Filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///kind expected values are Shared: multiple blob disks per storage account  Dedicated:
    ///single blob disk per storage account  Managed: azure managed data disk (only in managed
    ///availability set). defaults to shared
    @JsonKey(name: "kind")
    String? kind;
    
    ///readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1AzureDiskVolumeSource({
        this.cachingMode,
        required this.diskName,
        required this.diskUri,
        this.fsType,
        this.kind,
        this.readOnly,
    });

    factory IoK8SApiCoreV1AzureDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AzureDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AzureDiskVolumeSourceToJson(this);
}


///azureFile represents an Azure File Service mount on the host and bind mount to the pod.
///
///AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
@JsonSerializable()
class IoK8SApiCoreV1AzureFilePersistentVolumeSource {
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretName is the name of secret that contains Azure Storage Account Name and Key
    @JsonKey(name: "secretName")
    String secretName;
    
    ///secretNamespace is the namespace of the secret that contains Azure Storage Account Name
    ///and Key default is the same as the Pod
    @JsonKey(name: "secretNamespace")
    String? secretNamespace;
    
    ///shareName is the azure Share Name
    @JsonKey(name: "shareName")
    String shareName;

    IoK8SApiCoreV1AzureFilePersistentVolumeSource({
        this.readOnly,
        required this.secretName,
        this.secretNamespace,
        required this.shareName,
    });

    factory IoK8SApiCoreV1AzureFilePersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AzureFilePersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AzureFilePersistentVolumeSourceToJson(this);
}


///cephFS represents a Ceph FS mount on the host that shares a pod's lifetime
///
///Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1CephFsPersistentVolumeSource {
    
    ///monitors is Required: Monitors is a collection of Ceph monitors More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "monitors")
    List<String> monitors;
    
    ///path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    @JsonKey(name: "path")
    String? path;
    
    ///readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts. More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretFile is Optional: SecretFile is the path to key ring for User, default is
    ////etc/ceph/user.secret More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "secretFile")
    String? secretFile;
    
    ///secretRef is Optional: SecretRef is reference to the authentication secret for User,
    ///default is empty. More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretReference? secretRef;
    
    ///user is Optional: User is the rados user name, default is admin More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "user")
    String? user;

    IoK8SApiCoreV1CephFsPersistentVolumeSource({
        required this.monitors,
        this.path,
        this.readOnly,
        this.secretFile,
        this.secretRef,
        this.user,
    });

    factory IoK8SApiCoreV1CephFsPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CephFsPersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CephFsPersistentVolumeSourceToJson(this);
}


///secretRef is Optional: SecretRef is reference to the authentication secret for User,
///default is empty. More info:
///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
///
///SecretReference represents a Secret Reference. It has enough information to retrieve
///secret in any namespace
///
///secretRef is Optional: points to a secret object containing parameters used to connect to
///OpenStack.
///
///controllerExpandSecretRef is a reference to the secret object containing sensitive
///information to pass to the CSI driver to complete the CSI ControllerExpandVolume call.
///This field is optional, and may be empty if no secret is required. If the secret object
///contains more than one secret, all secrets are passed.
///
///controllerPublishSecretRef is a reference to the secret object containing sensitive
///information to pass to the CSI driver to complete the CSI ControllerPublishVolume and
///ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is
///required. If the secret object contains more than one secret, all secrets are passed.
///
///nodeExpandSecretRef is a reference to the secret object containing sensitive information
///to pass to the CSI driver to complete the CSI NodeExpandVolume call. This field is
///optional, may be omitted if no secret is required. If the secret object contains more
///than one secret, all secrets are passed.
///
///nodePublishSecretRef is a reference to the secret object containing sensitive information
///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
///calls. This field is optional, and may be empty if no secret is required. If the secret
///object contains more than one secret, all secrets are passed.
///
///nodeStageSecretRef is a reference to the secret object containing sensitive information
///to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and
///NodeUnstageVolume calls. This field is optional, and may be empty if no secret is
///required. If the secret object contains more than one secret, all secrets are passed.
///
///secretRef is Optional: SecretRef is reference to the secret object containing sensitive
///information to pass to the plugin scripts. This may be empty if no secret object is
///specified. If the secret object contains more than one secret, all secrets are passed to
///the plugin scripts.
///
///secretRef is the CHAP Secret for iSCSI target and initiator authentication
///
///secretRef is name of the authentication secret for RBDUser. If provided overrides
///keyring. Default is nil. More info:
///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
///
///secretRef references to the secret for ScaleIO user and other sensitive information. If
///this is not provided, Login operation will fail.
@JsonSerializable()
class IoK8SApiCoreV1SecretReference {
    
    ///name is unique within a namespace to reference a secret resource.
    @JsonKey(name: "name")
    String? name;
    
    ///namespace defines the space within which the secret name must be unique.
    @JsonKey(name: "namespace")
    String? namespace;

    IoK8SApiCoreV1SecretReference({
        this.name,
        this.namespace,
    });

    factory IoK8SApiCoreV1SecretReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretReferenceToJson(this);
}


///cinder represents a cinder volume attached and mounted on kubelets host machine. More
///info: https://examples.k8s.io/mysql-cinder-pd/README.md
///
///Represents a cinder volume resource in Openstack. A Cinder volume must exist before
///mounting to a container. The volume must also be in the same region as the kubelet.
///Cinder volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1CinderPersistentVolumeSource {
    
    ///fsType Filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts. More info:
    ///https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is Optional: points to a secret object containing parameters used to connect to
    ///OpenStack.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretReference? secretRef;
    
    ///volumeID used to identify the volume in cinder. More info:
    ///https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "volumeID")
    String volumeId;

    IoK8SApiCoreV1CinderPersistentVolumeSource({
        this.fsType,
        this.readOnly,
        this.secretRef,
        required this.volumeId,
    });

    factory IoK8SApiCoreV1CinderPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CinderPersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CinderPersistentVolumeSourceToJson(this);
}


///claimRef is part of a bi-directional binding between PersistentVolume and
///PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the
///authoritative bind between PV and PVC. More info:
///https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding
///
///ObjectReference contains enough information to let you inspect or modify the referred
///object.
///
///secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If
///not specified, default values will be attempted.
@JsonSerializable()
class IoK8SApiCoreV1ObjectReference {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///If referring to a piece of an object instead of an entire object, this string should
    ///contain a valid JSON/Go field access statement, such as
    ///desiredState.manifest.containers[2]. For example, if the object reference is to a
    ///container within a pod, this would take on a value like: "spec.containers{name}" (where
    ///"name" refers to the name of the container that triggered the event) or if no container
    ///name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax
    ///is chosen only to have some well-defined way of referencing a part of an object.
    @JsonKey(name: "fieldPath")
    String? fieldPath;
    
    ///Kind of the referent. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///Specific resourceVersion to which this reference is made, if any. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///UID of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApiCoreV1ObjectReference({
        this.apiVersion,
        this.fieldPath,
        this.kind,
        this.name,
        this.namespace,
        this.resourceVersion,
        this.uid,
    });

    factory IoK8SApiCoreV1ObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ObjectReferenceToJson(this);
}


///csi represents storage that is handled by an external CSI driver (Beta feature).
///
///Represents storage that is managed by an external CSI volume driver (Beta feature)
@JsonSerializable()
class IoK8SApiCoreV1CsiPersistentVolumeSource {
    
    ///controllerExpandSecretRef is a reference to the secret object containing sensitive
    ///information to pass to the CSI driver to complete the CSI ControllerExpandVolume call.
    ///This field is optional, and may be empty if no secret is required. If the secret object
    ///contains more than one secret, all secrets are passed.
    @JsonKey(name: "controllerExpandSecretRef")
    IoK8SApiCoreV1SecretReference? controllerExpandSecretRef;
    
    ///controllerPublishSecretRef is a reference to the secret object containing sensitive
    ///information to pass to the CSI driver to complete the CSI ControllerPublishVolume and
    ///ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is
    ///required. If the secret object contains more than one secret, all secrets are passed.
    @JsonKey(name: "controllerPublishSecretRef")
    IoK8SApiCoreV1SecretReference? controllerPublishSecretRef;
    
    ///driver is the name of the driver to use for this volume. Required.
    @JsonKey(name: "driver")
    String driver;
    
    ///fsType to mount. Must be a filesystem type supported by the host operating system. Ex.
    ///"ext4", "xfs", "ntfs".
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///nodeExpandSecretRef is a reference to the secret object containing sensitive information
    ///to pass to the CSI driver to complete the CSI NodeExpandVolume call. This field is
    ///optional, may be omitted if no secret is required. If the secret object contains more
    ///than one secret, all secrets are passed.
    @JsonKey(name: "nodeExpandSecretRef")
    IoK8SApiCoreV1SecretReference? nodeExpandSecretRef;
    
    ///nodePublishSecretRef is a reference to the secret object containing sensitive information
    ///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
    ///calls. This field is optional, and may be empty if no secret is required. If the secret
    ///object contains more than one secret, all secrets are passed.
    @JsonKey(name: "nodePublishSecretRef")
    IoK8SApiCoreV1SecretReference? nodePublishSecretRef;
    
    ///nodeStageSecretRef is a reference to the secret object containing sensitive information
    ///to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and
    ///NodeUnstageVolume calls. This field is optional, and may be empty if no secret is
    ///required. If the secret object contains more than one secret, all secrets are passed.
    @JsonKey(name: "nodeStageSecretRef")
    IoK8SApiCoreV1SecretReference? nodeStageSecretRef;
    
    ///readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeAttributes of the volume to publish.
    @JsonKey(name: "volumeAttributes")
    Map<String, String>? volumeAttributes;
    
    ///volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume
    ///to refer to the volume on all subsequent calls. Required.
    @JsonKey(name: "volumeHandle")
    String volumeHandle;

    IoK8SApiCoreV1CsiPersistentVolumeSource({
        this.controllerExpandSecretRef,
        this.controllerPublishSecretRef,
        required this.driver,
        this.fsType,
        this.nodeExpandSecretRef,
        this.nodePublishSecretRef,
        this.nodeStageSecretRef,
        this.readOnly,
        this.volumeAttributes,
        required this.volumeHandle,
    });

    factory IoK8SApiCoreV1CsiPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CsiPersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CsiPersistentVolumeSourceToJson(this);
}


///fc represents a Fibre Channel resource that is attached to a kubelet's host machine and
///then exposed to the pod.
///
///Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as
///read/write once. Fibre Channel volumes support ownership management and SELinux
///relabeling.
@JsonSerializable()
class IoK8SApiCoreV1FcVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///lun is Optional: FC target lun number
    @JsonKey(name: "lun")
    int? lun;
    
    ///readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///targetWWNs is Optional: FC target worldwide names (WWNs)
    @JsonKey(name: "targetWWNs")
    List<String>? targetWwNs;
    
    ///wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of
    ///targetWWNs and lun must be set, but not both simultaneously.
    @JsonKey(name: "wwids")
    List<String>? wwids;

    IoK8SApiCoreV1FcVolumeSource({
        this.fsType,
        this.lun,
        this.readOnly,
        this.targetWwNs,
        this.wwids,
    });

    factory IoK8SApiCoreV1FcVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1FcVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1FcVolumeSourceToJson(this);
}


///flexVolume represents a generic volume resource that is provisioned/attached using an
///exec based plugin.
///
///FlexPersistentVolumeSource represents a generic persistent volume resource that is
///provisioned/attached using an exec based plugin.
@JsonSerializable()
class IoK8SApiCoreV1FlexPersistentVolumeSource {
    
    ///driver is the name of the driver to use for this volume.
    @JsonKey(name: "driver")
    String driver;
    
    ///fsType is the Filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume
    ///script.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///options is Optional: this field holds extra command options if any.
    @JsonKey(name: "options")
    Map<String, String>? options;
    
    ///readOnly is Optional: defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is Optional: SecretRef is reference to the secret object containing sensitive
    ///information to pass to the plugin scripts. This may be empty if no secret object is
    ///specified. If the secret object contains more than one secret, all secrets are passed to
    ///the plugin scripts.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretReference? secretRef;

    IoK8SApiCoreV1FlexPersistentVolumeSource({
        required this.driver,
        this.fsType,
        this.options,
        this.readOnly,
        this.secretRef,
    });

    factory IoK8SApiCoreV1FlexPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1FlexPersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1FlexPersistentVolumeSourceToJson(this);
}


///flocker represents a Flocker volume attached to a kubelet's host machine and exposed to
///the pod for its usage. This depends on the Flocker control service being running
///
///Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName
///and datasetUUID should be set. Flocker volumes do not support ownership management or
///SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1FlockerVolumeSource {
    
    ///datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker
    ///should be considered as deprecated
    @JsonKey(name: "datasetName")
    String? datasetName;
    
    ///datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
    @JsonKey(name: "datasetUUID")
    String? datasetUuid;

    IoK8SApiCoreV1FlockerVolumeSource({
        this.datasetName,
        this.datasetUuid,
    });

    factory IoK8SApiCoreV1FlockerVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1FlockerVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1FlockerVolumeSourceToJson(this);
}


///gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host
///machine and then exposed to the pod. Provisioned by an admin. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
///
///Represents a Persistent Disk resource in Google Compute Engine.
///
///A GCE PD must exist before mounting to a container. The disk must also be in the same GCE
///project and zone as the kubelet. A GCE PD can only be mounted as read/write once or
///read-only many times. GCE PDs support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1GcePersistentDiskVolumeSource {
    
    ///fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///partition is the partition in the volume that you want to mount. If omitted, the default
    ///is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as
    ///"1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property
    ///empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "partition")
    int? partition;
    
    ///pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "pdName")
    String pdName;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1GcePersistentDiskVolumeSource({
        this.fsType,
        this.partition,
        required this.pdName,
        this.readOnly,
    });

    factory IoK8SApiCoreV1GcePersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GcePersistentDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GcePersistentDiskVolumeSourceToJson(this);
}


///glusterfs represents a Glusterfs volume that is attached to a host and exposed to the
///pod. Provisioned by an admin. More info:
///https://examples.k8s.io/volumes/glusterfs/README.md
///
///Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1GlusterfsPersistentVolumeSource {
    
    ///endpoints is the endpoint name that details Glusterfs topology. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "endpoints")
    String endpoints;
    
    ///endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is
    ///empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "endpointsNamespace")
    String? endpointsNamespace;
    
    ///path is the Glusterfs volume path. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "path")
    String path;
    
    ///readOnly here will force the Glusterfs volume to be mounted with read-only permissions.
    ///Defaults to false. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1GlusterfsPersistentVolumeSource({
        required this.endpoints,
        this.endpointsNamespace,
        required this.path,
        this.readOnly,
    });

    factory IoK8SApiCoreV1GlusterfsPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GlusterfsPersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GlusterfsPersistentVolumeSourceToJson(this);
}


///hostPath represents a directory on the host. Provisioned by a developer or tester. This
///is useful for single-node development and testing only! On-host storage is not supported
///in any way and WILL NOT WORK in a multi-node cluster. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#hostpath
///
///Represents a host path mapped into a pod. Host path volumes do not support ownership
///management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1HostPathVolumeSource {
    
    ///path of the directory on the host. If the path is a symlink, it will follow the link to
    ///the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "path")
    String path;
    
    ///type for HostPath Volume Defaults to "" More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "type")
    String? type;

    IoK8SApiCoreV1HostPathVolumeSource({
        required this.path,
        this.type,
    });

    factory IoK8SApiCoreV1HostPathVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HostPathVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HostPathVolumeSourceToJson(this);
}


///iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and
///then exposed to the pod. Provisioned by an admin.
///
///ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted
///as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1IscsiPersistentVolumeSource {
    
    ///chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
    @JsonKey(name: "chapAuthDiscovery")
    bool? chapAuthDiscovery;
    
    ///chapAuthSession defines whether support iSCSI Session CHAP authentication
    @JsonKey(name: "chapAuthSession")
    bool? chapAuthSession;
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#iscsi
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with
    ///iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be
    ///created for the connection.
    @JsonKey(name: "initiatorName")
    String? initiatorName;
    
    ///iqn is Target iSCSI Qualified Name.
    @JsonKey(name: "iqn")
    String iqn;
    
    ///iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default'
    ///(tcp).
    @JsonKey(name: "iscsiInterface")
    String? iscsiInterface;
    
    ///lun is iSCSI Target Lun number.
    @JsonKey(name: "lun")
    int lun;
    
    ///portals is the iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if
    ///the port is other than default (typically TCP ports 860 and 3260).
    @JsonKey(name: "portals")
    List<String>? portals;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is the CHAP Secret for iSCSI target and initiator authentication
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretReference? secretRef;
    
    ///targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the
    ///port is other than default (typically TCP ports 860 and 3260).
    @JsonKey(name: "targetPortal")
    String targetPortal;

    IoK8SApiCoreV1IscsiPersistentVolumeSource({
        this.chapAuthDiscovery,
        this.chapAuthSession,
        this.fsType,
        this.initiatorName,
        required this.iqn,
        this.iscsiInterface,
        required this.lun,
        this.portals,
        this.readOnly,
        this.secretRef,
        required this.targetPortal,
    });

    factory IoK8SApiCoreV1IscsiPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1IscsiPersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1IscsiPersistentVolumeSourceToJson(this);
}


///local represents directly-attached storage with node affinity
///
///Local represents directly-attached storage with node affinity (Beta feature)
@JsonSerializable()
class IoK8SApiCoreV1LocalVolumeSource {
    
    ///fsType is the filesystem type to mount. It applies only when the Path is a block device.
    ///Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs",
    ///"ntfs". The default value is to auto-select a filesystem if unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///path of the full path to the volume on the node. It can be either a directory or block
    ///device (disk, partition, ...).
    @JsonKey(name: "path")
    String path;

    IoK8SApiCoreV1LocalVolumeSource({
        this.fsType,
        required this.path,
    });

    factory IoK8SApiCoreV1LocalVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LocalVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LocalVolumeSourceToJson(this);
}


///nfs represents an NFS mount on the host. Provisioned by an admin. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#nfs
///
///Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support
///ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1NfsVolumeSource {
    
    ///path that is exported by the NFS server. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "path")
    String path;
    
    ///readOnly here will force the NFS export to be mounted with read-only permissions.
    ///Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///server is the hostname or IP address of the NFS server. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "server")
    String server;

    IoK8SApiCoreV1NfsVolumeSource({
        required this.path,
        this.readOnly,
        required this.server,
    });

    factory IoK8SApiCoreV1NfsVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NfsVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NfsVolumeSourceToJson(this);
}


///nodeAffinity defines constraints that limit what nodes this volume can be accessed from.
///This field influences the scheduling of pods that use this volume.
///
///VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed
///from.
@JsonSerializable()
class IoK8SApiCoreV1VolumeNodeAffinity {
    
    ///required specifies hard node constraints that must be met.
    @JsonKey(name: "required")
    IoK8SApiCoreV1NodeSelector? required;

    IoK8SApiCoreV1VolumeNodeAffinity({
        this.required,
    });

    factory IoK8SApiCoreV1VolumeNodeAffinity.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeNodeAffinityFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeNodeAffinityToJson(this);
}


///required specifies hard node constraints that must be met.
///
///A node selector represents the union of the results of one or more label queries over a
///set of nodes; that is, it represents the OR of the selectors represented by the node
///selector terms.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelector {
    
    ///Required. A list of node selector terms. The terms are ORed.
    @JsonKey(name: "nodeSelectorTerms")
    List<IoK8SApiCoreV1NodeSelectorTerm> nodeSelectorTerms;

    IoK8SApiCoreV1NodeSelector({
        required this.nodeSelectorTerms,
    });

    factory IoK8SApiCoreV1NodeSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorToJson(this);
}


///A null or empty node selector term matches no objects. The requirements of them are
///ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelectorTerm {
    
    ///A list of node selector requirements by node's labels.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApiCoreV1NodeSelectorRequirement>? matchExpressions;
    
    ///A list of node selector requirements by node's fields.
    @JsonKey(name: "matchFields")
    List<IoK8SApiCoreV1NodeSelectorRequirement>? matchFields;

    IoK8SApiCoreV1NodeSelectorTerm({
        this.matchExpressions,
        this.matchFields,
    });

    factory IoK8SApiCoreV1NodeSelectorTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorTermToJson(this);
}


///A node selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelectorRequirement {
    
    ///The label key that the selector applies to.
    @JsonKey(name: "key")
    String key;
    
    ///Represents a key's relationship to a set of values. Valid operators are In, NotIn,
    ///Exists, DoesNotExist. Gt, and Lt.
    @JsonKey(name: "operator")
    String ioK8SApiCoreV1NodeSelectorRequirementOperator;
    
    ///An array of string values. If the operator is In or NotIn, the values array must be
    ///non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If
    ///the operator is Gt or Lt, the values array must have a single element, which will be
    ///interpreted as an integer. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String>? values;

    IoK8SApiCoreV1NodeSelectorRequirement({
        required this.key,
        required this.ioK8SApiCoreV1NodeSelectorRequirementOperator,
        this.values,
    });

    factory IoK8SApiCoreV1NodeSelectorRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorRequirementToJson(this);
}


///photonPersistentDisk represents a PhotonController persistent disk attached and mounted
///on kubelets host machine
///
///Represents a Photon Controller persistent disk resource.
@JsonSerializable()
class IoK8SApiCoreV1PhotonPersistentDiskVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///pdID is the ID that identifies Photon Controller persistent disk
    @JsonKey(name: "pdID")
    String pdId;

    IoK8SApiCoreV1PhotonPersistentDiskVolumeSource({
        this.fsType,
        required this.pdId,
    });

    factory IoK8SApiCoreV1PhotonPersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PhotonPersistentDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PhotonPersistentDiskVolumeSourceToJson(this);
}


///portworxVolume represents a portworx volume attached and mounted on kubelets host
///machine
///
///PortworxVolumeSource represents a Portworx volume resource.
@JsonSerializable()
class IoK8SApiCoreV1PortworxVolumeSource {
    
    ///fSType represents the filesystem type to mount Must be a filesystem type supported by the
    ///host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeID uniquely identifies a Portworx volume
    @JsonKey(name: "volumeID")
    String volumeId;

    IoK8SApiCoreV1PortworxVolumeSource({
        this.fsType,
        this.readOnly,
        required this.volumeId,
    });

    factory IoK8SApiCoreV1PortworxVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PortworxVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PortworxVolumeSourceToJson(this);
}


///quobyte represents a Quobyte mount on the host that shares a pod's lifetime
///
///Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1QuobyteVolumeSource {
    
    ///group to map volume access to Default is no group
    @JsonKey(name: "group")
    String? group;
    
    ///readOnly here will force the Quobyte volume to be mounted with read-only permissions.
    ///Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///registry represents a single or multiple Quobyte Registry services specified as a string
    ///as host:port pair (multiple entries are separated with commas) which acts as the central
    ///registry for volumes
    @JsonKey(name: "registry")
    String registry;
    
    ///tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned
    ///Quobyte volumes, value is set by the plugin
    @JsonKey(name: "tenant")
    String? tenant;
    
    ///user to map volume access to Defaults to serivceaccount user
    @JsonKey(name: "user")
    String? user;
    
    ///volume is a string that references an already created Quobyte volume by name.
    @JsonKey(name: "volume")
    String volume;

    IoK8SApiCoreV1QuobyteVolumeSource({
        this.group,
        this.readOnly,
        required this.registry,
        this.tenant,
        this.user,
        required this.volume,
    });

    factory IoK8SApiCoreV1QuobyteVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1QuobyteVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1QuobyteVolumeSourceToJson(this);
}


///rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More
///info: https://examples.k8s.io/volumes/rbd/README.md
///
///Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes
///support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1RbdPersistentVolumeSource {
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#rbd
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///image is the rados image name. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "image")
    String image;
    
    ///keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "keyring")
    String? keyring;
    
    ///monitors is a collection of Ceph monitors. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "monitors")
    List<String> monitors;
    
    ///pool is the rados pool name. Default is rbd. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "pool")
    String? pool;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More
    ///info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is name of the authentication secret for RBDUser. If provided overrides
    ///keyring. Default is nil. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretReference? secretRef;
    
    ///user is the rados user name. Default is admin. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "user")
    String? user;

    IoK8SApiCoreV1RbdPersistentVolumeSource({
        this.fsType,
        required this.image,
        this.keyring,
        required this.monitors,
        this.pool,
        this.readOnly,
        this.secretRef,
        this.user,
    });

    factory IoK8SApiCoreV1RbdPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1RbdPersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1RbdPersistentVolumeSourceToJson(this);
}


///scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
///
///ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
@JsonSerializable()
class IoK8SApiCoreV1ScaleIoPersistentVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///gateway is the host address of the ScaleIO API Gateway.
    @JsonKey(name: "gateway")
    String gateway;
    
    ///protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
    @JsonKey(name: "protectionDomain")
    String? protectionDomain;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef references to the secret for ScaleIO user and other sensitive information. If
    ///this is not provided, Login operation will fail.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretReference secretRef;
    
    ///sslEnabled is the flag to enable/disable SSL communication with Gateway, default false
    @JsonKey(name: "sslEnabled")
    bool? sslEnabled;
    
    ///storageMode indicates whether the storage for a volume should be ThickProvisioned or
    ///ThinProvisioned. Default is ThinProvisioned.
    @JsonKey(name: "storageMode")
    String? storageMode;
    
    ///storagePool is the ScaleIO Storage Pool associated with the protection domain.
    @JsonKey(name: "storagePool")
    String? storagePool;
    
    ///system is the name of the storage system as configured in ScaleIO.
    @JsonKey(name: "system")
    String system;
    
    ///volumeName is the name of a volume already created in the ScaleIO system that is
    ///associated with this volume source.
    @JsonKey(name: "volumeName")
    String? volumeName;

    IoK8SApiCoreV1ScaleIoPersistentVolumeSource({
        this.fsType,
        required this.gateway,
        this.protectionDomain,
        this.readOnly,
        required this.secretRef,
        this.sslEnabled,
        this.storageMode,
        this.storagePool,
        required this.system,
        this.volumeName,
    });

    factory IoK8SApiCoreV1ScaleIoPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ScaleIoPersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ScaleIoPersistentVolumeSourceToJson(this);
}


///storageOS represents a StorageOS volume that is attached to the kubelet's host machine
///and mounted into the pod More info: https://examples.k8s.io/volumes/storageos/README.md
///
///Represents a StorageOS persistent volume resource.
@JsonSerializable()
class IoK8SApiCoreV1StorageOsPersistentVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If
    ///not specified, default values will be attempted.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1ObjectReference? secretRef;
    
    ///volumeName is the human-readable name of the StorageOS volume.  Volume names are only
    ///unique within a namespace.
    @JsonKey(name: "volumeName")
    String? volumeName;
    
    ///volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is
    ///specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping
    ///to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to
    ///override the default behaviour. Set to "default" if you are not using namespaces within
    ///StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
    @JsonKey(name: "volumeNamespace")
    String? volumeNamespace;

    IoK8SApiCoreV1StorageOsPersistentVolumeSource({
        this.fsType,
        this.readOnly,
        this.secretRef,
        this.volumeName,
        this.volumeNamespace,
    });

    factory IoK8SApiCoreV1StorageOsPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1StorageOsPersistentVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1StorageOsPersistentVolumeSourceToJson(this);
}


///vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
///
///Represents a vSphere volume resource.
@JsonSerializable()
class IoK8SApiCoreV1VsphereVirtualDiskVolumeSource {
    
    ///fsType is filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with
    ///the StoragePolicyName.
    @JsonKey(name: "storagePolicyID")
    String? storagePolicyId;
    
    ///storagePolicyName is the storage Policy Based Management (SPBM) profile name.
    @JsonKey(name: "storagePolicyName")
    String? storagePolicyName;
    
    ///volumePath is the path that identifies vSphere volume vmdk
    @JsonKey(name: "volumePath")
    String volumePath;

    IoK8SApiCoreV1VsphereVirtualDiskVolumeSource({
        this.fsType,
        this.storagePolicyId,
        this.storagePolicyName,
        required this.volumePath,
    });

    factory IoK8SApiCoreV1VsphereVirtualDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VsphereVirtualDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VsphereVirtualDiskVolumeSourceToJson(this);
}


///status represents status of the VolumeAttachment request. Populated by the entity
///completing the attach or detach operation, i.e. the external-attacher.
///
///VolumeAttachmentStatus is the status of a VolumeAttachment request.
@JsonSerializable()
class IoK8SApiStorageV1VolumeAttachmentStatus {
    
    ///attached indicates the volume is successfully attached. This field must only be set by
    ///the entity completing the attach operation, i.e. the external-attacher.
    @JsonKey(name: "attached")
    bool attached;
    
    ///attachError represents the last error encountered during attach operation, if any. This
    ///field must only be set by the entity completing the attach operation, i.e. the
    ///external-attacher.
    @JsonKey(name: "attachError")
    IoK8SApiStorageV1VolumeError? attachError;
    
    ///attachmentMetadata is populated with any information returned by the attach operation,
    ///upon successful attach, that must be passed into subsequent WaitForAttach or Mount calls.
    ///This field must only be set by the entity completing the attach operation, i.e. the
    ///external-attacher.
    @JsonKey(name: "attachmentMetadata")
    Map<String, String>? attachmentMetadata;
    
    ///detachError represents the last error encountered during detach operation, if any. This
    ///field must only be set by the entity completing the detach operation, i.e. the
    ///external-attacher.
    @JsonKey(name: "detachError")
    IoK8SApiStorageV1VolumeError? detachError;

    IoK8SApiStorageV1VolumeAttachmentStatus({
        required this.attached,
        this.attachError,
        this.attachmentMetadata,
        this.detachError,
    });

    factory IoK8SApiStorageV1VolumeAttachmentStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1VolumeAttachmentStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1VolumeAttachmentStatusToJson(this);
}


///attachError represents the last error encountered during attach operation, if any. This
///field must only be set by the entity completing the attach operation, i.e. the
///external-attacher.
///
///VolumeError captures an error encountered during a volume operation.
///
///detachError represents the last error encountered during detach operation, if any. This
///field must only be set by the entity completing the detach operation, i.e. the
///external-attacher.
@JsonSerializable()
class IoK8SApiStorageV1VolumeError {
    
    ///message represents the error encountered during Attach or Detach operation. This string
    ///may be logged, so it should not contain sensitive information.
    @JsonKey(name: "message")
    String? message;
    
    ///time represents the time the error was encountered.
    @JsonKey(name: "time")
    DateTime? time;

    IoK8SApiStorageV1VolumeError({
        this.message,
        this.time,
    });

    factory IoK8SApiStorageV1VolumeError.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1VolumeErrorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1VolumeErrorToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum VolumeattachmentlistKind {
    @JsonValue("VolumeAttachmentList")
    VOLUME_ATTACHMENT_LIST
}

final volumeattachmentlistKindValues = EnumValues({
    "VolumeAttachmentList": VolumeattachmentlistKind.VOLUME_ATTACHMENT_LIST
});


///Standard list metadata More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
///
///ListMeta describes metadata that synthetic resources must have, including lists and
///various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
@JsonSerializable()
class Metadata {
    
    ///continue may be set if the user set a limit on the number of items returned, and
    ///indicates that the server has more data available. The value is opaque and may be used to
    ///issue another request to the endpoint that served this list to retrieve the next set of
    ///available objects. Continuing a consistent list may not be possible if the server
    ///configuration has changed or more than a few minutes have passed. The resourceVersion
    ///field returned when using this continue value will be identical to the value in the first
    ///response, unless you have received this token from an error message.
    @JsonKey(name: "continue")
    String? metadataContinue;
    
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

    Metadata({
        this.metadataContinue,
        this.remainingItemCount,
        this.resourceVersion,
        this.selfLink,
    });

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

    Map<String, dynamic> toJson() => _$MetadataToJson(this);
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
