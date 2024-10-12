import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'deleteoptions_meta_v1.g.dart';


///DeleteOptions may be provided when deleting an API object.
@JsonSerializable()
class DeleteoptionsMetaV1 {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    ApiVersion? apiVersion;
    
    ///When present, indicates that modifications should not be persisted. An invalid or
    ///unrecognized dryRun directive will result in an error response and no further processing
    ///of the request. Valid values are: - All: all dry run stages will be processed
    @JsonKey(name: "dryRun")
    List<String?>? dryRun;
    
    ///The duration in seconds before the object should be deleted. Value must be non-negative
    ///integer. The value zero indicates delete immediately. If this value is nil, the default
    ///grace period for the specified type will be used. Defaults to a per object value if not
    ///specified. zero means delete immediately.
    @JsonKey(name: "gracePeriodSeconds")
    int? gracePeriodSeconds;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    Kind? kind;
    
    ///Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7.
    ///Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be
    ///added to/removed from the object's finalizers list. Either this field or
    ///PropagationPolicy may be set, but not both.
    @JsonKey(name: "orphanDependents")
    bool? orphanDependents;
    
    ///Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict
    ///status will be returned.
    @JsonKey(name: "preconditions")
    IoK8SApimachineryPkgApisMetaV1Preconditions? preconditions;
    
    ///Whether and how garbage collection will be performed. Either this field or
    ///OrphanDependents may be set, but not both. The default policy is decided by the existing
    ///finalizer set in the metadata.finalizers and the resource-specific default policy.
    ///Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage
    ///collector to delete the dependents in the background; 'Foreground' - a cascading policy
    ///that deletes all dependents in the foreground.
    @JsonKey(name: "propagationPolicy")
    String? propagationPolicy;

    DeleteoptionsMetaV1({
        this.apiVersion,
        this.dryRun,
        this.gracePeriodSeconds,
        this.kind,
        this.orphanDependents,
        this.preconditions,
        this.propagationPolicy,
    });

    factory DeleteoptionsMetaV1.fromJson(Map<String, dynamic> json) => _$DeleteoptionsMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$DeleteoptionsMetaV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("admissionregistration.k8s.io/v1")
    ADMISSIONREGISTRATION_K8_S_IO_V1,
    @JsonValue("admissionregistration.k8s.io/v1alpha1")
    ADMISSIONREGISTRATION_K8_S_IO_V1_ALPHA1,
    @JsonValue("admissionregistration.k8s.io/v1beta1")
    ADMISSIONREGISTRATION_K8_S_IO_V1_BETA1,
    @JsonValue("admission.k8s.io/v1")
    ADMISSION_K8_S_IO_V1,
    @JsonValue("admission.k8s.io/v1beta1")
    ADMISSION_K8_S_IO_V1_BETA1,
    @JsonValue("apiextensions.k8s.io/v1")
    APIEXTENSIONS_K8_S_IO_V1,
    @JsonValue("apiextensions.k8s.io/v1beta1")
    APIEXTENSIONS_K8_S_IO_V1_BETA1,
    @JsonValue("apiregistration.k8s.io/v1")
    APIREGISTRATION_K8_S_IO_V1,
    @JsonValue("apiregistration.k8s.io/v1beta1")
    APIREGISTRATION_K8_S_IO_V1_BETA1,
    @JsonValue("apps/v1")
    APPS_V1,
    @JsonValue("apps/v1beta1")
    APPS_V1_BETA1,
    @JsonValue("apps/v1beta2")
    APPS_V1_BETA2,
    @JsonValue("authentication.k8s.io/v1")
    AUTHENTICATION_K8_S_IO_V1,
    @JsonValue("authentication.k8s.io/v1alpha1")
    AUTHENTICATION_K8_S_IO_V1_ALPHA1,
    @JsonValue("authentication.k8s.io/v1beta1")
    AUTHENTICATION_K8_S_IO_V1_BETA1,
    @JsonValue("authorization.k8s.io/v1")
    AUTHORIZATION_K8_S_IO_V1,
    @JsonValue("authorization.k8s.io/v1beta1")
    AUTHORIZATION_K8_S_IO_V1_BETA1,
    @JsonValue("autoscaling/v1")
    AUTOSCALING_V1,
    @JsonValue("autoscaling/v2")
    AUTOSCALING_V2,
    @JsonValue("autoscaling/v2beta1")
    AUTOSCALING_V2_BETA1,
    @JsonValue("autoscaling/v2beta2")
    AUTOSCALING_V2_BETA2,
    @JsonValue("batch/v1")
    BATCH_V1,
    @JsonValue("batch/v1beta1")
    BATCH_V1_BETA1,
    @JsonValue("certificates.k8s.io/v1")
    CERTIFICATES_K8_S_IO_V1,
    @JsonValue("certificates.k8s.io/v1alpha1")
    CERTIFICATES_K8_S_IO_V1_ALPHA1,
    @JsonValue("certificates.k8s.io/v1beta1")
    CERTIFICATES_K8_S_IO_V1_BETA1,
    @JsonValue("coordination.k8s.io/v1")
    COORDINATION_K8_S_IO_V1,
    @JsonValue("coordination.k8s.io/v1beta1")
    COORDINATION_K8_S_IO_V1_BETA1,
    @JsonValue("discovery.k8s.io/v1")
    DISCOVERY_K8_S_IO_V1,
    @JsonValue("discovery.k8s.io/v1beta1")
    DISCOVERY_K8_S_IO_V1_BETA1,
    @JsonValue("events.k8s.io/v1")
    EVENTS_K8_S_IO_V1,
    @JsonValue("events.k8s.io/v1beta1")
    EVENTS_K8_S_IO_V1_BETA1,
    @JsonValue("extensions/v1beta1")
    EXTENSIONS_V1_BETA1,
    @JsonValue("flowcontrol.apiserver.k8s.io/v1")
    FLOWCONTROL_APISERVER_K8_S_IO_V1,
    @JsonValue("flowcontrol.apiserver.k8s.io/v1beta1")
    FLOWCONTROL_APISERVER_K8_S_IO_V1_BETA1,
    @JsonValue("flowcontrol.apiserver.k8s.io/v1beta2")
    FLOWCONTROL_APISERVER_K8_S_IO_V1_BETA2,
    @JsonValue("flowcontrol.apiserver.k8s.io/v1beta3")
    FLOWCONTROL_APISERVER_K8_S_IO_V1_BETA3,
    @JsonValue("imagepolicy.k8s.io/v1alpha1")
    IMAGEPOLICY_K8_S_IO_V1_ALPHA1,
    @JsonValue("internal.apiserver.k8s.io/v1alpha1")
    INTERNAL_APISERVER_K8_S_IO_V1_ALPHA1,
    @JsonValue("networking.k8s.io/v1")
    NETWORKING_K8_S_IO_V1,
    @JsonValue("networking.k8s.io/v1alpha1")
    NETWORKING_K8_S_IO_V1_ALPHA1,
    @JsonValue("networking.k8s.io/v1beta1")
    NETWORKING_K8_S_IO_V1_BETA1,
    @JsonValue("node.k8s.io/v1")
    NODE_K8_S_IO_V1,
    @JsonValue("node.k8s.io/v1alpha1")
    NODE_K8_S_IO_V1_ALPHA1,
    @JsonValue("node.k8s.io/v1beta1")
    NODE_K8_S_IO_V1_BETA1,
    @JsonValue("policy/v1")
    POLICY_V1,
    @JsonValue("policy/v1beta1")
    POLICY_V1_BETA1,
    @JsonValue("rbac.authorization.k8s.io/v1")
    RBAC_AUTHORIZATION_K8_S_IO_V1,
    @JsonValue("rbac.authorization.k8s.io/v1alpha1")
    RBAC_AUTHORIZATION_K8_S_IO_V1_ALPHA1,
    @JsonValue("rbac.authorization.k8s.io/v1beta1")
    RBAC_AUTHORIZATION_K8_S_IO_V1_BETA1,
    @JsonValue("resource.k8s.io/v1alpha2")
    RESOURCE_K8_S_IO_V1_ALPHA2,
    @JsonValue("scheduling.k8s.io/v1")
    SCHEDULING_K8_S_IO_V1,
    @JsonValue("scheduling.k8s.io/v1alpha1")
    SCHEDULING_K8_S_IO_V1_ALPHA1,
    @JsonValue("scheduling.k8s.io/v1beta1")
    SCHEDULING_K8_S_IO_V1_BETA1,
    @JsonValue("storagemigration.k8s.io/v1alpha1")
    STORAGEMIGRATION_K8_S_IO_V1_ALPHA1,
    @JsonValue("storage.k8s.io/v1")
    STORAGE_K8_S_IO_V1,
    @JsonValue("storage.k8s.io/v1alpha1")
    STORAGE_K8_S_IO_V1_ALPHA1,
    @JsonValue("storage.k8s.io/v1beta1")
    STORAGE_K8_S_IO_V1_BETA1,
    @JsonValue("v1")
    V1
}

final apiVersionValues = EnumValues({
    "admissionregistration.k8s.io/v1": ApiVersion.ADMISSIONREGISTRATION_K8_S_IO_V1,
    "admissionregistration.k8s.io/v1alpha1": ApiVersion.ADMISSIONREGISTRATION_K8_S_IO_V1_ALPHA1,
    "admissionregistration.k8s.io/v1beta1": ApiVersion.ADMISSIONREGISTRATION_K8_S_IO_V1_BETA1,
    "admission.k8s.io/v1": ApiVersion.ADMISSION_K8_S_IO_V1,
    "admission.k8s.io/v1beta1": ApiVersion.ADMISSION_K8_S_IO_V1_BETA1,
    "apiextensions.k8s.io/v1": ApiVersion.APIEXTENSIONS_K8_S_IO_V1,
    "apiextensions.k8s.io/v1beta1": ApiVersion.APIEXTENSIONS_K8_S_IO_V1_BETA1,
    "apiregistration.k8s.io/v1": ApiVersion.APIREGISTRATION_K8_S_IO_V1,
    "apiregistration.k8s.io/v1beta1": ApiVersion.APIREGISTRATION_K8_S_IO_V1_BETA1,
    "apps/v1": ApiVersion.APPS_V1,
    "apps/v1beta1": ApiVersion.APPS_V1_BETA1,
    "apps/v1beta2": ApiVersion.APPS_V1_BETA2,
    "authentication.k8s.io/v1": ApiVersion.AUTHENTICATION_K8_S_IO_V1,
    "authentication.k8s.io/v1alpha1": ApiVersion.AUTHENTICATION_K8_S_IO_V1_ALPHA1,
    "authentication.k8s.io/v1beta1": ApiVersion.AUTHENTICATION_K8_S_IO_V1_BETA1,
    "authorization.k8s.io/v1": ApiVersion.AUTHORIZATION_K8_S_IO_V1,
    "authorization.k8s.io/v1beta1": ApiVersion.AUTHORIZATION_K8_S_IO_V1_BETA1,
    "autoscaling/v1": ApiVersion.AUTOSCALING_V1,
    "autoscaling/v2": ApiVersion.AUTOSCALING_V2,
    "autoscaling/v2beta1": ApiVersion.AUTOSCALING_V2_BETA1,
    "autoscaling/v2beta2": ApiVersion.AUTOSCALING_V2_BETA2,
    "batch/v1": ApiVersion.BATCH_V1,
    "batch/v1beta1": ApiVersion.BATCH_V1_BETA1,
    "certificates.k8s.io/v1": ApiVersion.CERTIFICATES_K8_S_IO_V1,
    "certificates.k8s.io/v1alpha1": ApiVersion.CERTIFICATES_K8_S_IO_V1_ALPHA1,
    "certificates.k8s.io/v1beta1": ApiVersion.CERTIFICATES_K8_S_IO_V1_BETA1,
    "coordination.k8s.io/v1": ApiVersion.COORDINATION_K8_S_IO_V1,
    "coordination.k8s.io/v1beta1": ApiVersion.COORDINATION_K8_S_IO_V1_BETA1,
    "discovery.k8s.io/v1": ApiVersion.DISCOVERY_K8_S_IO_V1,
    "discovery.k8s.io/v1beta1": ApiVersion.DISCOVERY_K8_S_IO_V1_BETA1,
    "events.k8s.io/v1": ApiVersion.EVENTS_K8_S_IO_V1,
    "events.k8s.io/v1beta1": ApiVersion.EVENTS_K8_S_IO_V1_BETA1,
    "extensions/v1beta1": ApiVersion.EXTENSIONS_V1_BETA1,
    "flowcontrol.apiserver.k8s.io/v1": ApiVersion.FLOWCONTROL_APISERVER_K8_S_IO_V1,
    "flowcontrol.apiserver.k8s.io/v1beta1": ApiVersion.FLOWCONTROL_APISERVER_K8_S_IO_V1_BETA1,
    "flowcontrol.apiserver.k8s.io/v1beta2": ApiVersion.FLOWCONTROL_APISERVER_K8_S_IO_V1_BETA2,
    "flowcontrol.apiserver.k8s.io/v1beta3": ApiVersion.FLOWCONTROL_APISERVER_K8_S_IO_V1_BETA3,
    "imagepolicy.k8s.io/v1alpha1": ApiVersion.IMAGEPOLICY_K8_S_IO_V1_ALPHA1,
    "internal.apiserver.k8s.io/v1alpha1": ApiVersion.INTERNAL_APISERVER_K8_S_IO_V1_ALPHA1,
    "networking.k8s.io/v1": ApiVersion.NETWORKING_K8_S_IO_V1,
    "networking.k8s.io/v1alpha1": ApiVersion.NETWORKING_K8_S_IO_V1_ALPHA1,
    "networking.k8s.io/v1beta1": ApiVersion.NETWORKING_K8_S_IO_V1_BETA1,
    "node.k8s.io/v1": ApiVersion.NODE_K8_S_IO_V1,
    "node.k8s.io/v1alpha1": ApiVersion.NODE_K8_S_IO_V1_ALPHA1,
    "node.k8s.io/v1beta1": ApiVersion.NODE_K8_S_IO_V1_BETA1,
    "policy/v1": ApiVersion.POLICY_V1,
    "policy/v1beta1": ApiVersion.POLICY_V1_BETA1,
    "rbac.authorization.k8s.io/v1": ApiVersion.RBAC_AUTHORIZATION_K8_S_IO_V1,
    "rbac.authorization.k8s.io/v1alpha1": ApiVersion.RBAC_AUTHORIZATION_K8_S_IO_V1_ALPHA1,
    "rbac.authorization.k8s.io/v1beta1": ApiVersion.RBAC_AUTHORIZATION_K8_S_IO_V1_BETA1,
    "resource.k8s.io/v1alpha2": ApiVersion.RESOURCE_K8_S_IO_V1_ALPHA2,
    "scheduling.k8s.io/v1": ApiVersion.SCHEDULING_K8_S_IO_V1,
    "scheduling.k8s.io/v1alpha1": ApiVersion.SCHEDULING_K8_S_IO_V1_ALPHA1,
    "scheduling.k8s.io/v1beta1": ApiVersion.SCHEDULING_K8_S_IO_V1_BETA1,
    "storagemigration.k8s.io/v1alpha1": ApiVersion.STORAGEMIGRATION_K8_S_IO_V1_ALPHA1,
    "storage.k8s.io/v1": ApiVersion.STORAGE_K8_S_IO_V1,
    "storage.k8s.io/v1alpha1": ApiVersion.STORAGE_K8_S_IO_V1_ALPHA1,
    "storage.k8s.io/v1beta1": ApiVersion.STORAGE_K8_S_IO_V1_BETA1,
    "v1": ApiVersion.V1
});


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("DeleteOptions")
    DELETE_OPTIONS
}

final kindValues = EnumValues({
    "DeleteOptions": Kind.DELETE_OPTIONS
});


///Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict
///status will be returned.
///
///Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1Preconditions {
    
    ///Specifies the target ResourceVersion
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Specifies the target UID.
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApimachineryPkgApisMetaV1Preconditions({
        this.resourceVersion,
        this.uid,
    });

    factory IoK8SApimachineryPkgApisMetaV1Preconditions.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1PreconditionsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1PreconditionsToJson(this);
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
