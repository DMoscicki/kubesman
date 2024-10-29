import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'persistentvolumeclaimspec_v1.g.dart';


///PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a
///Source for provider-specific attributes
@JsonSerializable()
class PersistentvolumeclaimspecV1 {
    
    ///accessModes contains the desired access modes the volume should have. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
    @JsonKey(name: "accessModes")
    List<String?>? accessModes;
    
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

    PersistentvolumeclaimspecV1({
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

    factory PersistentvolumeclaimspecV1.fromJson(Map<String, dynamic> json) => _$PersistentvolumeclaimspecV1FromJson(json);

    Map<String, dynamic> toJson() => _$PersistentvolumeclaimspecV1ToJson(this);
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
