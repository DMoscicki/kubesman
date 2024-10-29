import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'subjectaccessreview_authorization_v1.g.dart';


///SubjectAccessReview checks whether or not a user or group can perform an action.
@JsonSerializable()
class SubjectaccessreviewAuthorizationV1 {
    
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
    
    ///Standard list metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///Spec holds information about the request being evaluated
    @JsonKey(name: "spec")
    IoK8SApiAuthorizationV1SubjectAccessReviewSpec spec;
    
    ///Status is filled in by the server and indicates whether the request is allowed or not
    @JsonKey(name: "status")
    IoK8SApiAuthorizationV1SubjectAccessReviewStatus? status;

    SubjectaccessreviewAuthorizationV1({
        this.apiVersion,
        this.kind,
        this.metadata,
        required this.spec,
        this.status,
    });

    factory SubjectaccessreviewAuthorizationV1.fromJson(Map<String, dynamic> json) => _$SubjectaccessreviewAuthorizationV1FromJson(json);

    Map<String, dynamic> toJson() => _$SubjectaccessreviewAuthorizationV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("authorization.k8s.io/v1")
    AUTHORIZATION_K8_S_IO_V1
}

final apiVersionValues = EnumValues({
    "authorization.k8s.io/v1": ApiVersion.AUTHORIZATION_K8_S_IO_V1
});


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("SubjectAccessReview")
    SUBJECT_ACCESS_REVIEW
}

final kindValues = EnumValues({
    "SubjectAccessReview": Kind.SUBJECT_ACCESS_REVIEW
});


///Standard list metadata. More info:
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


///Spec holds information about the request being evaluated
///
///SubjectAccessReviewSpec is a description of the access request.  Exactly one of
///ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
@JsonSerializable()
class IoK8SApiAuthorizationV1SubjectAccessReviewSpec {
    
    ///Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that
    ///is input to the authorizer it needs a reflection here.
    @JsonKey(name: "extra")
    Map<String, List<String>>? extra;
    
    ///Groups is the groups you're testing for.
    @JsonKey(name: "groups")
    List<String>? groups;
    
    ///NonResourceAttributes describes information for a non-resource access request
    @JsonKey(name: "nonResourceAttributes")
    IoK8SApiAuthorizationV1NonResourceAttributes? nonResourceAttributes;
    
    ///ResourceAuthorizationAttributes describes information for a resource access request
    @JsonKey(name: "resourceAttributes")
    IoK8SApiAuthorizationV1ResourceAttributes? resourceAttributes;
    
    ///UID information about the requesting user.
    @JsonKey(name: "uid")
    String? uid;
    
    ///User is the user you're testing for. If you specify "User" but not "Groups", then is it
    ///interpreted as "What if User were not a member of any groups
    @JsonKey(name: "user")
    String? user;

    IoK8SApiAuthorizationV1SubjectAccessReviewSpec({
        this.extra,
        this.groups,
        this.nonResourceAttributes,
        this.resourceAttributes,
        this.uid,
        this.user,
    });

    factory IoK8SApiAuthorizationV1SubjectAccessReviewSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthorizationV1SubjectAccessReviewSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthorizationV1SubjectAccessReviewSpecToJson(this);
}


///NonResourceAttributes describes information for a non-resource access request
///
///NonResourceAttributes includes the authorization attributes available for non-resource
///requests to the Authorizer interface
@JsonSerializable()
class IoK8SApiAuthorizationV1NonResourceAttributes {
    
    ///Path is the URL path of the request
    @JsonKey(name: "path")
    String? path;
    
    ///Verb is the standard HTTP verb
    @JsonKey(name: "verb")
    String? verb;

    IoK8SApiAuthorizationV1NonResourceAttributes({
        this.path,
        this.verb,
    });

    factory IoK8SApiAuthorizationV1NonResourceAttributes.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthorizationV1NonResourceAttributesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthorizationV1NonResourceAttributesToJson(this);
}


///ResourceAuthorizationAttributes describes information for a resource access request
///
///ResourceAttributes includes the authorization attributes available for resource requests
///to the Authorizer interface
@JsonSerializable()
class IoK8SApiAuthorizationV1ResourceAttributes {
    
    ///Group is the API Group of the Resource.  "*" means all.
    @JsonKey(name: "group")
    String? group;
    
    ///Name is the name of the resource being requested for a "get" or deleted for a "delete".
    ///"" (empty) means all.
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace is the namespace of the action being requested.  Currently, there is no
    ///distinction between no namespace and all namespaces "" (empty) is defaulted for
    ///LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty)
    ///means "all" for namespace scoped resources from a SubjectAccessReview or
    ///SelfSubjectAccessReview
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///Resource is one of the existing resource types.  "*" means all.
    @JsonKey(name: "resource")
    String? resource;
    
    ///Subresource is one of the existing resource types.  "" means none.
    @JsonKey(name: "subresource")
    String? subresource;
    
    ///Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete,
    ///proxy.  "*" means all.
    @JsonKey(name: "verb")
    String? verb;
    
    ///Version is the API Version of the Resource.  "*" means all.
    @JsonKey(name: "version")
    String? version;

    IoK8SApiAuthorizationV1ResourceAttributes({
        this.group,
        this.name,
        this.namespace,
        this.resource,
        this.subresource,
        this.verb,
        this.version,
    });

    factory IoK8SApiAuthorizationV1ResourceAttributes.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthorizationV1ResourceAttributesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthorizationV1ResourceAttributesToJson(this);
}


///Status is filled in by the server and indicates whether the request is allowed or not
///
///SubjectAccessReviewStatus
@JsonSerializable()
class IoK8SApiAuthorizationV1SubjectAccessReviewStatus {
    
    ///Allowed is required. True if the action would be allowed, false otherwise.
    @JsonKey(name: "allowed")
    bool allowed;
    
    ///Denied is optional. True if the action would be denied, otherwise false. If both allowed
    ///is false and denied is false, then the authorizer has no opinion on whether to authorize
    ///the action. Denied may not be true if Allowed is true.
    @JsonKey(name: "denied")
    bool? denied;
    
    ///EvaluationError is an indication that some error occurred during the authorization check.
    ///It is entirely possible to get an error and be able to continue determine authorization
    ///status in spite of it. For instance, RBAC can be missing a role, but enough roles are
    ///still present and bound to reason about the request.
    @JsonKey(name: "evaluationError")
    String? evaluationError;
    
    ///Reason is optional.  It indicates why a request was allowed or denied.
    @JsonKey(name: "reason")
    String? reason;

    IoK8SApiAuthorizationV1SubjectAccessReviewStatus({
        required this.allowed,
        this.denied,
        this.evaluationError,
        this.reason,
    });

    factory IoK8SApiAuthorizationV1SubjectAccessReviewStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthorizationV1SubjectAccessReviewStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthorizationV1SubjectAccessReviewStatusToJson(this);
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
