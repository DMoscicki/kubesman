import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'persistentvolumeclaimtemplate.g.dart';


///PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of
///an EphemeralVolumeSource.
@JsonSerializable()
class Persistentvolumeclaimtemplate {
    
    ///May contain labels and annotations that will be copied into the PVC when creating it. No
    ///other fields are allowed and will be rejected during validation.
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///The specification for the PersistentVolumeClaim. The entire content is copied unchanged
    ///into the PVC that gets created from this template. The same fields as in a
    ///PersistentVolumeClaim are also valid here.
    @JsonKey(name: "spec")
    IoK8SApiCoreV1PersistentVolumeClaimSpec spec;

    Persistentvolumeclaimtemplate({
        this.metadata,
        required this.spec,
    });

    factory Persistentvolumeclaimtemplate.fromJson(Map<String, dynamic> json) => _$PersistentvolumeclaimtemplateFromJson(json);

    Map<String, dynamic> toJson() => _$PersistentvolumeclaimtemplateToJson(this);
}


///May contain labels and annotations that will be copied into the PVC when creating it. No
///other fields are allowed and will be rejected during validation.
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


///The specification for the PersistentVolumeClaim. The entire content is copied unchanged
///into the PVC that gets created from this template. The same fields as in a
///PersistentVolumeClaim are also valid here.
///
///PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a
///Source for provider-specific attributes
@JsonSerializable()
class IoK8SApiCoreV1PersistentVolumeClaimSpec {
    
    ///accessModes contains the desired access modes the volume should have. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
    @JsonKey(name: "accessModes")
    List<String>? accessModes;
    
    ///dataSource field can be used to specify either: * An existing VolumeSnapshot object
    ///(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the
    ///provisioner or an external controller can support the specified data source, it will
    ///create a new volume based on the contents of the specified data source. When the
    ///AnyVolumeDataSource feature gate is enabled, dataSource contents will be copied to
    ///dataSourceRef, and dataSourceRef contents will be copied to dataSource when
    ///dataSourceRef.namespace is not specified. If the namespace is specified, then
    ///dataSourceRef will not be copied to dataSource.
    @JsonKey(name: "dataSource")
    IoK8SApiCoreV1TypedLocalObjectReference? dataSource;
    
    ///dataSourceRef specifies the object from which to populate the volume with data, if a
    ///non-empty volume is desired. This may be any object from a non-empty API group (non core
    ///object) or a PersistentVolumeClaim object. When this field is specified, volume binding
    ///will only succeed if the type of the specified object matches some installed volume
    ///populator or dynamic provisioner. This field will replace the functionality of the
    ///dataSource field and as such if both fields are non-empty, they must have the same value.
    ///For backwards compatibility, when namespace isn't specified in dataSourceRef, both fields
    ///(dataSource and dataSourceRef) will be set to the same value automatically if one of them
    ///is empty and the other is non-empty. When namespace is specified in dataSourceRef,
    ///dataSource isn't set to the same value and must be empty. There are three important
    ///differences between dataSource and dataSourceRef: * While dataSource only allows two
    ///specific types of objects, dataSourceRef
    ///allows any non-core object, as well as PersistentVolumeClaim objects.
    ///* While dataSource ignores disallowed values (dropping them), dataSourceRef
    ///preserves all values, and generates an error if a disallowed value is
    ///specified.
    ///* While dataSource only allows local objects, dataSourceRef allows objects
    ///in any namespaces.
    ///(Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
    ///(Alpha) Using the namespace field of dataSourceRef requires the
    ///CrossNamespaceVolumeDataSource feature gate to be enabled.
    @JsonKey(name: "dataSourceRef")
    IoK8SApiCoreV1TypedObjectReference? dataSourceRef;
    
    ///resources represents the minimum resources the volume should have. If
    ///RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource
    ///requirements that are lower than previous value but must still be higher than capacity
    ///recorded in the status field of the claim. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
    @JsonKey(name: "resources")
    IoK8SApiCoreV1VolumeResourceRequirements? resources;
    
    ///selector is a label query over volumes to consider for binding.
    @JsonKey(name: "selector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? selector;
    
    ///storageClassName is the name of the StorageClass required by the claim. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
    @JsonKey(name: "storageClassName")
    String? storageClassName;
    
    ///volumeAttributesClassName may be used to set the VolumeAttributesClass used by this
    ///claim. If specified, the CSI driver will create or update the volume with the attributes
    ///defined in the corresponding VolumeAttributesClass. This has a different purpose than
    ///storageClassName, it can be changed after the claim is created. An empty string value
    ///means that no VolumeAttributesClass will be applied to the claim but it's not allowed to
    ///reset this field to empty string once it is set. If unspecified and the
    ///PersistentVolumeClaim is unbound, the default VolumeAttributesClass will be set by the
    ///persistentvolume controller if it exists. If the resource referred to by
    ///volumeAttributesClass does not exist, this PersistentVolumeClaim will be set to a Pending
    ///state, as reflected by the modifyVolumeStatus field, until such as a resource exists.
    ///More info: https://kubernetes.io/docs/concepts/storage/volume-attributes-classes/ (Alpha)
    ///Using this field requires the VolumeAttributesClass feature gate to be enabled.
    @JsonKey(name: "volumeAttributesClassName")
    String? volumeAttributesClassName;
    
    ///volumeMode defines what type of volume is required by the claim. Value of Filesystem is
    ///implied when not included in claim spec.
    @JsonKey(name: "volumeMode")
    String? volumeMode;
    
    ///volumeName is the binding reference to the PersistentVolume backing this claim.
    @JsonKey(name: "volumeName")
    String? volumeName;

    IoK8SApiCoreV1PersistentVolumeClaimSpec({
        this.accessModes,
        this.dataSource,
        this.dataSourceRef,
        this.resources,
        this.selector,
        this.storageClassName,
        this.volumeAttributesClassName,
        this.volumeMode,
        this.volumeName,
    });

    factory IoK8SApiCoreV1PersistentVolumeClaimSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PersistentVolumeClaimSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PersistentVolumeClaimSpecToJson(this);
}


///dataSource field can be used to specify either: * An existing VolumeSnapshot object
///(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the
///provisioner or an external controller can support the specified data source, it will
///create a new volume based on the contents of the specified data source. When the
///AnyVolumeDataSource feature gate is enabled, dataSource contents will be copied to
///dataSourceRef, and dataSourceRef contents will be copied to dataSource when
///dataSourceRef.namespace is not specified. If the namespace is specified, then
///dataSourceRef will not be copied to dataSource.
///
///TypedLocalObjectReference contains enough information to let you locate the typed
///referenced object inside the same namespace.
@JsonSerializable()
class IoK8SApiCoreV1TypedLocalObjectReference {
    
    ///APIGroup is the group for the resource being referenced. If APIGroup is not specified,
    ///the specified Kind must be in the core API group. For any other third-party types,
    ///APIGroup is required.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced
    @JsonKey(name: "kind")
    String kind;
    
    ///Name is the name of resource being referenced
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1TypedLocalObjectReference({
        this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory IoK8SApiCoreV1TypedLocalObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TypedLocalObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TypedLocalObjectReferenceToJson(this);
}


///dataSourceRef specifies the object from which to populate the volume with data, if a
///non-empty volume is desired. This may be any object from a non-empty API group (non core
///object) or a PersistentVolumeClaim object. When this field is specified, volume binding
///will only succeed if the type of the specified object matches some installed volume
///populator or dynamic provisioner. This field will replace the functionality of the
///dataSource field and as such if both fields are non-empty, they must have the same value.
///For backwards compatibility, when namespace isn't specified in dataSourceRef, both fields
///(dataSource and dataSourceRef) will be set to the same value automatically if one of them
///is empty and the other is non-empty. When namespace is specified in dataSourceRef,
///dataSource isn't set to the same value and must be empty. There are three important
///differences between dataSource and dataSourceRef: * While dataSource only allows two
///specific types of objects, dataSourceRef
///allows any non-core object, as well as PersistentVolumeClaim objects.
///* While dataSource ignores disallowed values (dropping them), dataSourceRef
///preserves all values, and generates an error if a disallowed value is
///specified.
///* While dataSource only allows local objects, dataSourceRef allows objects
///in any namespaces.
///(Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
///(Alpha) Using the namespace field of dataSourceRef requires the
///CrossNamespaceVolumeDataSource feature gate to be enabled.
@JsonSerializable()
class IoK8SApiCoreV1TypedObjectReference {
    
    ///APIGroup is the group for the resource being referenced. If APIGroup is not specified,
    ///the specified Kind must be in the core API group. For any other third-party types,
    ///APIGroup is required.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced
    @JsonKey(name: "kind")
    String kind;
    
    ///Name is the name of resource being referenced
    @JsonKey(name: "name")
    String name;
    
    ///Namespace is the namespace of resource being referenced Note that when a namespace is
    ///specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent
    ///namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant
    ///documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource
    ///feature gate to be enabled.
    @JsonKey(name: "namespace")
    String? namespace;

    IoK8SApiCoreV1TypedObjectReference({
        this.apiGroup,
        required this.kind,
        required this.name,
        this.namespace,
    });

    factory IoK8SApiCoreV1TypedObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TypedObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TypedObjectReferenceToJson(this);
}


///resources represents the minimum resources the volume should have. If
///RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource
///requirements that are lower than previous value but must still be higher than capacity
///recorded in the status field of the claim. More info:
///https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
///
///VolumeResourceRequirements describes the storage resource requirements for a volume.
@JsonSerializable()
class IoK8SApiCoreV1VolumeResourceRequirements {
    
    ///Limits describes the maximum amount of compute resources allowed. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "limits")
    Map<String, dynamic>? limits;
    
    ///Requests describes the minimum amount of compute resources required. If Requests is
    ///omitted for a container, it defaults to Limits if that is explicitly specified, otherwise
    ///to an implementation-defined value. Requests cannot exceed Limits. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "requests")
    Map<String, dynamic>? requests;

    IoK8SApiCoreV1VolumeResourceRequirements({
        this.limits,
        this.requests,
    });

    factory IoK8SApiCoreV1VolumeResourceRequirements.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeResourceRequirementsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeResourceRequirementsToJson(this);
}


///selector is a label query over volumes to consider for binding.
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1LabelSelector {
    
    ///matchExpressions is a list of label selector requirements. The requirements are ANDed.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement>? matchExpressions;
    
    ///matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is
    ///equivalent to an element of matchExpressions, whose key field is "key", the operator is
    ///"In", and the values array contains only "value". The requirements are ANDed.
    @JsonKey(name: "matchLabels")
    Map<String, String>? matchLabels;

    IoK8SApimachineryPkgApisMetaV1LabelSelector({
        this.matchExpressions,
        this.matchLabels,
    });

    factory IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(this);
}


///A label selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement {
    
    ///key is the label key that the selector applies to.
    @JsonKey(name: "key")
    String key;
    
    ///operator represents a key's relationship to a set of values. Valid operators are In,
    ///NotIn, Exists and DoesNotExist.
    @JsonKey(name: "operator")
    String ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator;
    
    ///values is an array of string values. If the operator is In or NotIn, the values array
    ///must be non-empty. If the operator is Exists or DoesNotExist, the values array must be
    ///empty. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String>? values;

    IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement({
        required this.key,
        required this.ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
        this.values,
    });

    factory IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(this);
}
