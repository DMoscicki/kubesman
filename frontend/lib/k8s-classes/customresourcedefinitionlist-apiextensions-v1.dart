import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'customresourcedefinitionlist_apiextensions_v1.g.dart';


///CustomResourceDefinitionList is a list of CustomResourceDefinition objects.
@JsonSerializable()
class CustomresourcedefinitionlistApiextensionsV1 {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    ApiVersion? apiVersion;
    
    ///items list individual CustomResourceDefinition objects
    @JsonKey(name: "items")
    List<CustomresourcedefinitionApiextensionsV1>? items;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    CustomresourcedefinitionlistApiextensionsV1Kind? kind;
    
    ///Standard object's metadata More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    CustomresourcedefinitionlistApiextensionsV1Metadata? metadata;

    CustomresourcedefinitionlistApiextensionsV1({
        this.apiVersion,
        required this.items,
        this.kind,
        this.metadata,
    });

    factory CustomresourcedefinitionlistApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionlistApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionlistApiextensionsV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("apiextensions.k8s.io/v1")
    APIEXTENSIONS_K8_S_IO_V1
}

final apiVersionValues = EnumValues({
    "apiextensions.k8s.io/v1": ApiVersion.APIEXTENSIONS_K8_S_IO_V1
});


///CustomResourceDefinition represents a resource that should be exposed on the API server.
///Its name MUST be in the format <.spec.name>.<.spec.group>.
@JsonSerializable()
class CustomresourcedefinitionApiextensionsV1 {
    
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
    ItemKind? kind;
    
    ///Standard object's metadata More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    ItemMetadata? metadata;
    
    ///spec describes how the user wants the resources to appear
    @JsonKey(name: "spec")
    Spec spec;
    
    ///status indicates the actual state of the CustomResourceDefinition
    @JsonKey(name: "status")
    Status? status;

    CustomresourcedefinitionApiextensionsV1({
        this.apiVersion,
        this.kind,
        this.metadata,
        required this.spec,
        this.status,
    });

    factory CustomresourcedefinitionApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionApiextensionsV1ToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum ItemKind {
    @JsonValue("CustomResourceDefinition")
    CUSTOM_RESOURCE_DEFINITION
}

final itemKindValues = EnumValues({
    "CustomResourceDefinition": ItemKind.CUSTOM_RESOURCE_DEFINITION
});


///Standard object's metadata More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
///
///ObjectMeta is metadata that all persisted resources must have, which includes all objects
///users must create.
@JsonSerializable()
class ItemMetadata {
    
    ///Annotations is an unstructured key value map stored with a resource that may be set by
    ///external tools to store and retrieve arbitrary metadata. They are not queryable and
    ///should be preserved when modifying objects. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations
    @JsonKey(name: "annotations")
    Map<String, String?>? annotations;
    
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
    List<String?>? finalizers;
    
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
    Map<String, String?>? labels;
    
    ///ManagedFields maps workflow-id and version to the set of fields that are managed by that
    ///workflow. This is mostly for internal housekeeping, and users typically shouldn't need to
    ///set or understand this field. A workflow can be the user's name, a controller's name, or
    ///the name of a specific apply path like "ci-cd". The set of fields is always in the
    ///version that the workflow used when modifying the object.
    @JsonKey(name: "managedFields")
    List<ManagedfieldsentryMetaV1>? managedFields;
    
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
    List<OwnerreferenceMetaV1>? ownerReferences;
    
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

    ItemMetadata({
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

    factory ItemMetadata.fromJson(Map<String, dynamic> json) => _$ItemMetadataFromJson(json);

    Map<String, dynamic> toJson() => _$ItemMetadataToJson(this);
}


///ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource
///that the fieldset applies to.
@JsonSerializable()
class ManagedfieldsentryMetaV1 {
    
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

    ManagedfieldsentryMetaV1({
        this.apiVersion,
        this.fieldsType,
        this.fieldsV1,
        this.manager,
        this.operation,
        this.subresource,
        this.time,
    });

    factory ManagedfieldsentryMetaV1.fromJson(Map<String, dynamic> json) => _$ManagedfieldsentryMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$ManagedfieldsentryMetaV1ToJson(this);
}


///OwnerReference contains enough information to let you identify an owning object. An
///owning object must be in the same namespace as the dependent, or be cluster-scoped, so
///there is no namespace field.
@JsonSerializable()
class OwnerreferenceMetaV1 {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
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
    String? kind;
    
    ///Name of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
    @JsonKey(name: "name")
    String? name;
    
    ///UID of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
    @JsonKey(name: "uid")
    String? uid;

    OwnerreferenceMetaV1({
        required this.apiVersion,
        this.blockOwnerDeletion,
        this.controller,
        required this.kind,
        required this.name,
        required this.uid,
    });

    factory OwnerreferenceMetaV1.fromJson(Map<String, dynamic> json) => _$OwnerreferenceMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$OwnerreferenceMetaV1ToJson(this);
}


///spec describes how the user wants the resources to appear
///
///CustomResourceDefinitionSpec describes how a user wants their resource to appear
@JsonSerializable()
class Spec {
    
    ///conversion defines conversion settings for the CRD.
    @JsonKey(name: "conversion")
    Conversion? conversion;
    
    ///group is the API group of the defined custom resource. The custom resources are served
    ///under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the
    ///form `<names.plural>.<group>`).
    @JsonKey(name: "group")
    String? group;
    
    ///names specify the resource and kind names for the custom resource.
    @JsonKey(name: "names")
    Names names;
    
    ///preserveUnknownFields indicates that object fields which are not specified in the OpenAPI
    ///schema should be preserved when persisting to storage. apiVersion, kind, metadata and
    ///known fields inside metadata are always preserved. This field is deprecated in favor of
    ///setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`.
    ///See
    ///https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning
    ///for details.
    @JsonKey(name: "preserveUnknownFields")
    bool? preserveUnknownFields;
    
    ///scope indicates whether the defined custom resource is cluster- or namespace-scoped.
    ///Allowed values are `Cluster` and `Namespaced`.
    @JsonKey(name: "scope")
    String? scope;
    
    ///versions is the list of all API versions of the defined custom resource. Version names
    ///are used to compute the order in which served versions are listed in API discovery. If
    ///the version string is "kube-like", it will sort above non "kube-like" version strings,
    ///which are ordered lexicographically. "Kube-like" versions start with a "v", then are
    ///followed by a number (the major version), then optionally the string "alpha" or "beta"
    ///and another number (the minor version). These are sorted first by GA > beta > alpha
    ///(where GA is a version with no suffix such as beta or alpha), and then by comparing major
    ///version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2,
    ///v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    @JsonKey(name: "versions")
    List<CustomresourcedefinitionversionApiextensionsV1>? versions;

    Spec({
        this.conversion,
        required this.group,
        required this.names,
        this.preserveUnknownFields,
        required this.scope,
        required this.versions,
    });

    factory Spec.fromJson(Map<String, dynamic> json) => _$SpecFromJson(json);

    Map<String, dynamic> toJson() => _$SpecToJson(this);
}


///conversion defines conversion settings for the CRD.
///
///CustomResourceConversion describes how to convert different versions of a CR.
@JsonSerializable()
class Conversion {
    
    ///strategy specifies how custom resources are converted between versions. Allowed values
    ///are: - `"None"`: The converter only change the apiVersion and would not touch any other
    ///field in the custom resource. - `"Webhook"`: API Server will call to an external webhook
    ///to do the conversion. Additional information
    ///is needed for this option. This requires spec.preserveUnknownFields to be false, and
    ///spec.conversion.webhook to be set.
    @JsonKey(name: "strategy")
    String? strategy;
    
    ///webhook describes how to call the conversion webhook. Required when `strategy` is set to
    ///`"Webhook"`.
    @JsonKey(name: "webhook")
    Webhook? webhook;

    Conversion({
        required this.strategy,
        this.webhook,
    });

    factory Conversion.fromJson(Map<String, dynamic> json) => _$ConversionFromJson(json);

    Map<String, dynamic> toJson() => _$ConversionToJson(this);
}


///webhook describes how to call the conversion webhook. Required when `strategy` is set to
///`"Webhook"`.
///
///WebhookConversion describes how to call a conversion webhook
@JsonSerializable()
class Webhook {
    
    ///clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
    @JsonKey(name: "clientConfig")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig? clientConfig;
    
    ///conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the
    ///Webhook expects. The API server will use the first version in the list which it supports.
    ///If none of the versions specified in this list are supported by API server, conversion
    ///will fail for the custom resource. If a persisted Webhook configuration specifies allowed
    ///versions and does not include any versions known to the API Server, calls to the webhook
    ///will fail.
    @JsonKey(name: "conversionReviewVersions")
    List<String?>? conversionReviewVersions;

    Webhook({
        this.clientConfig,
        required this.conversionReviewVersions,
    });

    factory Webhook.fromJson(Map<String, dynamic> json) => _$WebhookFromJson(json);

    Map<String, dynamic> toJson() => _$WebhookToJson(this);
}


///clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
///
///WebhookClientConfig contains the information to make a TLS connection with the webhook.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig {
    
    ///caBundle is a PEM encoded CA bundle which will be used to validate the webhook's server
    ///certificate. If unspecified, system trust roots on the apiserver are used.
    @JsonKey(name: "caBundle")
    String? caBundle;
    
    ///service is a reference to the service for this webhook. Either service or url must be
    ///specified.
    ///
    ///If the webhook is running within the cluster, then you should use `service`.
    @JsonKey(name: "service")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference? service;
    
    ///url gives the location of the webhook, in standard URL form (`scheme://host:port/path`).
    ///Exactly one of `url` or `service` must be specified.
    ///
    ///The `host` should not refer to a service running in the cluster; use the `service` field
    ///instead. The host might be resolved via external DNS in some apiservers (e.g.,
    ///`kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation).
    ///`host` may also be an IP address.
    ///
    ///Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take
    ///great care to run this webhook on all hosts which run an apiserver which might need to
    ///make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy
    ///to turn up in a new cluster.
    ///
    ///The scheme must be "https"; the URL must begin with "https://".
    ///
    ///A path is optional, and if present may be any string permissible in a URL. You may use
    ///the path to pass an arbitrary string to the webhook, for example, a cluster identifier.
    ///
    ///Attempting to use a user or basic auth e.g. "user:password@" is not allowed. Fragments
    ///("#...") and query parameters ("?...") are not allowed, either.
    @JsonKey(name: "url")
    String? url;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig({
        this.caBundle,
        this.service,
        this.url,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfigFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfigToJson(this);
}


///service is a reference to the service for this webhook. Either service or url must be
///specified.
///
///If the webhook is running within the cluster, then you should use `service`.
///
///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference {
    
    ///name is the name of the service. Required
    @JsonKey(name: "name")
    String name;
    
    ///namespace is the namespace of the service. Required
    @JsonKey(name: "namespace")
    String namespace;
    
    ///path is an optional URL path at which the webhook will be contacted.
    @JsonKey(name: "path")
    String? path;
    
    ///port is an optional service port at which the webhook will be contacted. `port` should be
    ///a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
    @JsonKey(name: "port")
    int? port;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference({
        required this.name,
        required this.namespace,
        this.path,
        this.port,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReferenceToJson(this);
}


///names specify the resource and kind names for the custom resource.
///
///CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
///
///acceptedNames are the names that are actually being used to serve discovery. They may be
///different than the names in spec.
@JsonSerializable()
class Names {
    
    ///categories is a list of grouped resources this custom resource belongs to (e.g. 'all').
    ///This is published in API discovery documents, and used by clients to support invocations
    ///like `kubectl get all`.
    @JsonKey(name: "categories")
    List<String?>? categories;
    
    ///kind is the serialized kind of the resource. It is normally CamelCase and singular.
    ///Custom resource instances will use this value as the `kind` attribute in API calls.
    @JsonKey(name: "kind")
    String? kind;
    
    ///listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
    @JsonKey(name: "listKind")
    String? listKind;
    
    ///plural is the plural name of the resource to serve. The custom resources are served under
    ///`/apis/<group>/<version>/.../<plural>`. Must match the name of the
    ///CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
    @JsonKey(name: "plural")
    String? plural;
    
    ///shortNames are short names for the resource, exposed in API discovery documents, and used
    ///by clients to support invocations like `kubectl get <shortname>`. It must be all
    ///lowercase.
    @JsonKey(name: "shortNames")
    List<String?>? shortNames;
    
    ///singular is the singular name of the resource. It must be all lowercase. Defaults to
    ///lowercased `kind`.
    @JsonKey(name: "singular")
    String? singular;

    Names({
        this.categories,
        required this.kind,
        this.listKind,
        required this.plural,
        this.shortNames,
        this.singular,
    });

    factory Names.fromJson(Map<String, dynamic> json) => _$NamesFromJson(json);

    Map<String, dynamic> toJson() => _$NamesToJson(this);
}


///CustomResourceDefinitionVersion describes a version for CRD.
@JsonSerializable()
class CustomresourcedefinitionversionApiextensionsV1 {
    
    ///additionalPrinterColumns specifies additional columns returned in Table output. See
    ///https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables
    ///for details. If no columns are specified, a single column displaying the age of the
    ///custom resource is used.
    @JsonKey(name: "additionalPrinterColumns")
    List<CustomresourcecolumndefinitionApiextensionsV1>? additionalPrinterColumns;
    
    ///deprecated indicates this version of the custom resource API is deprecated. When set to
    ///true, API requests to this version receive a warning header in the server response.
    ///Defaults to false.
    @JsonKey(name: "deprecated")
    bool? deprecated;
    
    ///deprecationWarning overrides the default warning returned to API clients. May only be set
    ///when `deprecated` is true. The default warning indicates this version is deprecated and
    ///recommends use of the newest served version of equal or greater stability, if one exists.
    @JsonKey(name: "deprecationWarning")
    String? deprecationWarning;
    
    ///name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served
    ///under this version at `/apis/<group>/<version>/...` if `served` is true.
    @JsonKey(name: "name")
    String? name;
    
    ///schema describes the schema used for validation, pruning, and defaulting of this version
    ///of the custom resource.
    @JsonKey(name: "schema")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation? schema;
    
    ///selectableFields specifies paths to fields that may be used as field selectors. A maximum
    ///of 8 selectable fields are allowed. See
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
    @JsonKey(name: "selectableFields")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableField>? selectableFields;
    
    ///served is a flag enabling/disabling this version from being served via REST APIs
    @JsonKey(name: "served")
    bool? served;
    
    ///storage indicates this version should be used when persisting custom resources to
    ///storage. There must be exactly one version with storage=true.
    @JsonKey(name: "storage")
    bool? storage;
    
    ///subresources specify what subresources this version of the defined custom resource have.
    @JsonKey(name: "subresources")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources? subresources;

    CustomresourcedefinitionversionApiextensionsV1({
        this.additionalPrinterColumns,
        this.deprecated,
        this.deprecationWarning,
        required this.name,
        this.schema,
        this.selectableFields,
        required this.served,
        required this.storage,
        this.subresources,
    });

    factory CustomresourcedefinitionversionApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionversionApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionversionApiextensionsV1ToJson(this);
}


///CustomResourceColumnDefinition specifies a column for server side printing.
@JsonSerializable()
class CustomresourcecolumndefinitionApiextensionsV1 {
    
    ///description is a human readable description of this column.
    @JsonKey(name: "description")
    String? description;
    
    ///format is an optional OpenAPI type definition for this column. The 'name' format is
    ///applied to the primary identifier column to assist in clients identifying column is the
    ///resource name. See
    ///https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for
    ///details.
    @JsonKey(name: "format")
    String? format;
    
    ///jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each
    ///custom resource to produce the value for this column.
    @JsonKey(name: "jsonPath")
    String? jsonPath;
    
    ///name is a human readable name for the column.
    @JsonKey(name: "name")
    String? name;
    
    ///priority is an integer defining the relative importance of this column compared to
    ///others. Lower numbers are considered higher priority. Columns that may be omitted in
    ///limited space scenarios should be given a priority greater than 0.
    @JsonKey(name: "priority")
    int? priority;
    
    ///type is an OpenAPI type definition for this column. See
    ///https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for
    ///details.
    @JsonKey(name: "type")
    String? type;

    CustomresourcecolumndefinitionApiextensionsV1({
        this.description,
        this.format,
        required this.jsonPath,
        required this.name,
        this.priority,
        required this.type,
    });

    factory CustomresourcecolumndefinitionApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcecolumndefinitionApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcecolumndefinitionApiextensionsV1ToJson(this);
}


///schema describes the schema used for validation, pruning, and defaulting of this version
///of the custom resource.
///
///CustomResourceValidation is a list of validation methods for CustomResources.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation {
    
    ///openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
    @JsonKey(name: "openAPIV3Schema")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps? openApiv3Schema;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation({
        this.openApiv3Schema,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationToJson(this);
}


///openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
///
///JSONSchemaProps is a JSON-Schema following Specification Draft 4
///(http://json-schema.org/).
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps {
    @JsonKey(name: "$ref")
    String? ref;
    @JsonKey(name: "$schema")
    String? schema;
    @JsonKey(name: "additionalItems")
    dynamic additionalItems;
    @JsonKey(name: "additionalProperties")
    dynamic additionalProperties;
    @JsonKey(name: "allOf")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? allOf;
    @JsonKey(name: "anyOf")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? anyOf;
    
    ///default is a default value for undefined object fields. Defaulting is a beta feature
    ///under the CustomResourceDefaulting feature gate. Defaulting requires
    ///spec.preserveUnknownFields to be false.
    @JsonKey(name: "default")
    dynamic ioK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsDefault;
    @JsonKey(name: "definitions")
    Map<String, IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? definitions;
    @JsonKey(name: "dependencies")
    Map<String, dynamic>? dependencies;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "enum")
    List<dynamic>? ioK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsEnum;
    @JsonKey(name: "example")
    dynamic example;
    @JsonKey(name: "exclusiveMaximum")
    bool? exclusiveMaximum;
    @JsonKey(name: "exclusiveMinimum")
    bool? exclusiveMinimum;
    @JsonKey(name: "externalDocs")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation? externalDocs;
    
    ///format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats
    ///are validated:
    ///
    ///- bsonobjectid: a bson object ID, i.e. a 24 characters hex string - uri: an URI as parsed
    ///by Golang net/url.ParseRequestURI - email: an email address as parsed by Golang
    ///net/mail.ParseAddress - hostname: a valid representation for an Internet host name, as
    ///defined by RFC 1034, section 3.1 [RFC1034]. - ipv4: an IPv4 IP as parsed by Golang
    ///net.ParseIP - ipv6: an IPv6 IP as parsed by Golang net.ParseIP - cidr: a CIDR as parsed
    ///by Golang net.ParseCIDR - mac: a MAC address as parsed by Golang net.ParseMAC - uuid: an
    ///UUID that allows uppercase defined by the regex
    ///(?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid3: an UUID3
    ///that allows uppercase defined by the regex
    ///(?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid4: an UUID4
    ///that allows uppercase defined by the regex
    ///(?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - uuid5: an
    ///UUID5 that allows uppercase defined by the regex
    ///(?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - isbn: an
    ///ISBN10 or ISBN13 number string like "0321751043" or "978-0321751041" - isbn10: an ISBN10
    ///number string like "0321751043" - isbn13: an ISBN13 number string like "978-0321751041" -
    ///creditcard: a credit card number defined by the regex
    ///^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$
    ///with any non digit characters mixed in - ssn: a U.S. social security number following the
    ///regex ^\d{3}[- ]?\d{2}[- ]?\d{4}$ - hexcolor: an hexadecimal color code like "#FFFFFF:
    ///following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$ - rgbcolor: an RGB color code
    ///like rgb like "rgb(255,255,2559" - byte: base64 encoded binary data - password: any kind
    ///of string - date: a date string like "2006-01-02" as defined by full-date in RFC3339 -
    ///duration: a duration string like "22 ns" as parsed by Golang time.ParseDuration or
    ///compatible with Scala duration format - datetime: a date time string like
    ///"2014-12-15T19:30:20.000Z" as defined by date-time in RFC3339.
    @JsonKey(name: "format")
    String? format;
    @JsonKey(name: "id")
    String? id;
    @JsonKey(name: "items")
    dynamic items;
    @JsonKey(name: "maximum")
    double? maximum;
    @JsonKey(name: "maxItems")
    int? maxItems;
    @JsonKey(name: "maxLength")
    int? maxLength;
    @JsonKey(name: "maxProperties")
    int? maxProperties;
    @JsonKey(name: "minimum")
    double? minimum;
    @JsonKey(name: "minItems")
    int? minItems;
    @JsonKey(name: "minLength")
    int? minLength;
    @JsonKey(name: "minProperties")
    int? minProperties;
    @JsonKey(name: "multipleOf")
    double? multipleOf;
    @JsonKey(name: "not")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps? not;
    @JsonKey(name: "nullable")
    bool? nullable;
    @JsonKey(name: "oneOf")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? oneOf;
    @JsonKey(name: "pattern")
    String? pattern;
    @JsonKey(name: "patternProperties")
    Map<String, IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? patternProperties;
    @JsonKey(name: "properties")
    Map<String, IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? properties;
    @JsonKey(name: "required")
    List<String>? required;
    @JsonKey(name: "title")
    String? title;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "uniqueItems")
    bool? uniqueItems;
    
    ///x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes
    ///runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to
    ///further restrict the embedded object. kind, apiVersion and metadata are validated
    ///automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not
    ///have to be if the object is fully specified (up to kind, apiVersion, metadata).
    @JsonKey(name: "x-kubernetes-embedded-resource")
    bool? xKubernetesEmbeddedResource;
    
    ///x-kubernetes-int-or-string specifies that this value is either an integer or a string. If
    ///this is true, an empty type is allowed and type as child of anyOf is permitted if
    ///following one of the following patterns:
    ///
    ///1) anyOf:
    ///- type: integer
    ///- type: string
    ///2) allOf:
    ///- anyOf:
    ///- type: integer
    ///- type: string
    ///- ... zero or more
    @JsonKey(name: "x-kubernetes-int-or-string")
    bool? xKubernetesIntOrString;
    
    ///x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by
    ///specifying the keys used as the index of the map.
    ///
    ///This tag MUST only be used on lists that have the "x-kubernetes-list-type" extension set
    ///to "map". Also, the values specified for this attribute must be a scalar typed field of
    ///the child structure (no nesting is supported).
    ///
    ///The properties specified must either be required or have a default value, to ensure those
    ///properties are present for all list items.
    @JsonKey(name: "x-kubernetes-list-map-keys")
    List<String>? xKubernetesListMapKeys;
    
    ///x-kubernetes-list-type annotates an array to further describe its topology. This
    ///extension must only be used on lists and may have 3 possible values:
    ///
    ///1) `atomic`: the list is treated as a single entity, like a scalar.
    ///Atomic lists will be entirely replaced when updated. This extension
    ///may be used on any type of list (struct, scalar, ...).
    ///2) `set`:
    ///Sets are lists that must not have multiple items with the same value. Each
    ///value must be a scalar, an object with x-kubernetes-map-type `atomic` or an
    ///array with x-kubernetes-list-type `atomic`.
    ///3) `map`:
    ///These lists are like maps in that their elements have a non-index key
    ///used to identify them. Order is preserved upon merge. The map tag
    ///must only be used on a list with elements of type object.
    ///Defaults to atomic for arrays.
    @JsonKey(name: "x-kubernetes-list-type")
    String? xKubernetesListType;
    
    ///x-kubernetes-map-type annotates an object to further describe its topology. This
    ///extension must only be used when type is object and may have 2 possible values:
    ///
    ///1) `granular`:
    ///These maps are actual maps (key-value pairs) and each fields are independent
    ///from each other (they can each be manipulated by separate actors). This is
    ///the default behaviour for all maps.
    ///2) `atomic`: the list is treated as a single entity, like a scalar.
    ///Atomic maps will be entirely replaced when updated.
    @JsonKey(name: "x-kubernetes-map-type")
    String? xKubernetesMapType;
    
    ///x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning
    ///fields which are not specified in the validation schema. This affects fields recursively,
    ///but switches back to normal pruning behaviour if nested properties or
    ///additionalProperties are specified in the schema. This can either be true or undefined.
    ///False is forbidden.
    @JsonKey(name: "x-kubernetes-preserve-unknown-fields")
    bool? xKubernetesPreserveUnknownFields;
    
    ///x-kubernetes-validations describes a list of validation rules written in the CEL
    ///expression language. This field is an alpha-level. Using this field requires the feature
    ///gate `CustomResourceValidationExpressions` to be enabled.
    @JsonKey(name: "x-kubernetes-validations")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRule>? xKubernetesValidations;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps({
        this.ref,
        this.schema,
        this.additionalItems,
        this.additionalProperties,
        this.allOf,
        this.anyOf,
        this.ioK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsDefault,
        this.definitions,
        this.dependencies,
        this.description,
        this.ioK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsEnum,
        this.example,
        this.exclusiveMaximum,
        this.exclusiveMinimum,
        this.externalDocs,
        this.format,
        this.id,
        this.items,
        this.maximum,
        this.maxItems,
        this.maxLength,
        this.maxProperties,
        this.minimum,
        this.minItems,
        this.minLength,
        this.minProperties,
        this.multipleOf,
        this.not,
        this.nullable,
        this.oneOf,
        this.pattern,
        this.patternProperties,
        this.properties,
        this.required,
        this.title,
        this.type,
        this.uniqueItems,
        this.xKubernetesEmbeddedResource,
        this.xKubernetesIntOrString,
        this.xKubernetesListMapKeys,
        this.xKubernetesListType,
        this.xKubernetesMapType,
        this.xKubernetesPreserveUnknownFields,
        this.xKubernetesValidations,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsToJson(this);
}


///ExternalDocumentation allows referencing an external resource for extended documentation.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation {
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "url")
    String? url;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation({
        this.description,
        this.url,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationToJson(this);
}


///ValidationRule describes a validation rule written in the CEL expression language.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRule {
    
    ///fieldPath represents the field path returned when the validation fails. It must be a
    ///relative JSON path (i.e. with array notation) scoped to the location of this
    ///x-kubernetes-validations extension in the schema and refer to an existing field. e.g.
    ///when validation checks if a specific attribute `foo` under a map `testMap`, the fieldPath
    ///could be set to `.testMap.foo` If the validation checks two lists must have unique
    ///attributes, the fieldPath could be set to either of the list: e.g. `.testList` It does
    ///not support list numeric index. It supports child operation to refer to an existing field
    ///currently. Refer to [JSONPath support in
    ///Kubernetes](https://kubernetes.io/docs/reference/kubectl/jsonpath/) for more info.
    ///Numeric index of array is not supported. For field name which contains special
    ///characters, use `['specialName']` to refer the field name. e.g. for attribute `foo.34$`
    ///appears in a list `testList`, the fieldPath could be set to `.testList['foo.34$']`
    @JsonKey(name: "fieldPath")
    String? fieldPath;
    
    ///Message represents the message displayed when validation fails. The message is required
    ///if the Rule contains line breaks. The message must not contain line breaks. If unset, the
    ///message is "failed rule: {Rule}". e.g. "must be a URL with the host matching spec.host"
    @JsonKey(name: "message")
    String? message;
    
    ///MessageExpression declares a CEL expression that evaluates to the validation failure
    ///message that is returned when this rule fails. Since messageExpression is used as a
    ///failure message, it must evaluate to a string. If both message and messageExpression are
    ///present on a rule, then messageExpression will be used if validation fails. If
    ///messageExpression results in a runtime error, the runtime error is logged, and the
    ///validation failure message is produced as if the messageExpression field were unset. If
    ///messageExpression evaluates to an empty string, a string with only spaces, or a string
    ///that contains line breaks, then the validation failure message will also be produced as
    ///if the messageExpression field were unset, and the fact that messageExpression produced
    ///an empty string/string with only spaces/string with line breaks will be logged.
    ///messageExpression has access to all the same variables as the rule; the only difference
    ///is the return type. Example: "x must be less than max ("+string(self.max)+")"
    @JsonKey(name: "messageExpression")
    String? messageExpression;
    
    ///optionalOldSelf is used to opt a transition rule into evaluation even when the object is
    ///first created, or if the old object is missing the value.
    ///
    ///When enabled `oldSelf` will be a CEL optional whose value will be `None` if there is no
    ///old value, or when the object is initially created.
    ///
    ///You may check for presence of oldSelf using `oldSelf.hasValue()` and unwrap it after
    ///checking using `oldSelf.value()`. Check the CEL documentation for Optional types for more
    ///information: https://pkg.go.dev/github.com/google/cel-go/cel#OptionalTypes
    ///
    ///May not be set unless `oldSelf` is used in `rule`.
    @JsonKey(name: "optionalOldSelf")
    bool? optionalOldSelf;
    
    ///reason provides a machine-readable validation failure reason that is returned to the
    ///caller when a request fails this validation rule. The HTTP status code returned to the
    ///caller will match the reason of the reason of the first failed validation rule. The
    ///currently supported reasons are: "FieldValueInvalid", "FieldValueForbidden",
    ///"FieldValueRequired", "FieldValueDuplicate". If not set, default to use
    ///"FieldValueInvalid". All future added reasons must be accepted by clients when reading
    ///this value and unknown reasons should be treated as FieldValueInvalid.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Rule represents the expression which will be evaluated by CEL. ref:
    ///https://github.com/google/cel-spec The Rule is scoped to the location of the
    ///x-kubernetes-validations extension in the schema. The `self` variable in the CEL
    ///expression is bound to the scoped value. Example: - Rule scoped to the root of a resource
    ///with a status subresource: {"rule": "self.status.actual <= self.spec.maxDesired"}
    ///
    ///If the Rule is scoped to an object with properties, the accessible properties of the
    ///object are field selectable via `self.field` and field presence can be checked via
    ///`has(self.field)`. Null valued fields are treated as absent fields in CEL expressions. If
    ///the Rule is scoped to an object with additionalProperties (i.e. a map) the value of the
    ///map are accessible via `self[mapKey]`, map containment can be checked via `mapKey in
    ///self` and all entries of the map are accessible via CEL macros and functions such as
    ///`self.all(...)`. If the Rule is scoped to an array, the elements of the array are
    ///accessible via `self[i]` and also by macros and functions. If the Rule is scoped to a
    ///scalar, `self` is bound to the scalar value. Examples: - Rule scoped to a map of objects:
    ///{"rule": "self.components['Widget'].priority < 10"} - Rule scoped to a list of integers:
    ///{"rule": "self.values.all(value, value >= 0 && value < 100)"} - Rule scoped to a string
    ///value: {"rule": "self.startsWith('kube')"}
    ///
    ///The `apiVersion`, `kind`, `metadata.name` and `metadata.generateName` are always
    ///accessible from the root of the object and from any x-kubernetes-embedded-resource
    ///annotated objects. No other metadata properties are accessible.
    ///
    ///Unknown data preserved in custom resources via x-kubernetes-preserve-unknown-fields is
    ///not accessible in CEL expressions. This includes: - Unknown field values that are
    ///preserved by object schemas with x-kubernetes-preserve-unknown-fields. - Object
    ///properties where the property schema is of an "unknown type". An "unknown type" is
    ///recursively defined as:
    ///- A schema with no type and x-kubernetes-preserve-unknown-fields set to true
    ///- An array where the items schema is of an "unknown type"
    ///- An object where the additionalProperties schema is of an "unknown type"
    ///
    ///Only property names of the form `[a-zA-Z_.-/][a-zA-Z0-9_.-/]*` are accessible. Accessible
    ///property names are escaped according to the following rules when accessed in the
    ///expression: - '__' escapes to '__underscores__' - '.' escapes to '__dot__' - '-' escapes
    ///to '__dash__' - '/' escapes to '__slash__' - Property names that exactly match a CEL
    ///RESERVED keyword escape to '__{keyword}__'. The keywords are:
    ///"true", "false", "null", "in", "as", "break", "const", "continue", "else", "for",
    ///"function", "if",
    ///"import", "let", "loop", "package", "namespace", "return".
    ///Examples:
    ///- Rule accessing a property named "namespace": {"rule": "self.__namespace__ > 0"}
    ///- Rule accessing a property named "x-prop": {"rule": "self.x__dash__prop > 0"}
    ///- Rule accessing a property named "redact__d": {"rule": "self.redact__underscores__d >
    ///0"}
    ///
    ///Equality on arrays with x-kubernetes-list-type of 'set' or 'map' ignores element order,
    ///i.e. [1, 2] == [2, 1]. Concatenation on arrays with x-kubernetes-list-type use the
    ///semantics of the list type:
    ///- 'set': `X + Y` performs a union where the array positions of all elements in `X` are
    ///preserved and
    ///non-intersecting elements in `Y` are appended, retaining their partial order.
    ///- 'map': `X + Y` performs a merge where the array positions of all keys in `X` are
    ///preserved but the values
    ///are overwritten by values in `Y` when the key sets of `X` and `Y` intersect. Elements in
    ///`Y` with
    ///non-intersecting keys are appended, retaining their partial order.
    ///
    ///If `rule` makes use of the `oldSelf` variable it is implicitly a `transition rule`.
    ///
    ///By default, the `oldSelf` variable is the same type as `self`. When `optionalOldSelf` is
    ///true, the `oldSelf` variable is a CEL optional
    ///variable whose value() is the same type as `self`.
    ///See the documentation for the `optionalOldSelf` field for details.
    ///
    ///Transition rules by default are applied only on UPDATE requests and are skipped if an old
    ///value could not be found. You can opt a transition rule into unconditional evaluation by
    ///setting `optionalOldSelf` to true.
    @JsonKey(name: "rule")
    String rule;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRule({
        this.fieldPath,
        this.message,
        this.messageExpression,
        this.optionalOldSelf,
        this.reason,
        required this.rule,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRuleToJson(this);
}


///SelectableField specifies the JSON path of a field that may be used with field selectors.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableField {
    
    ///jsonPath is a simple JSON path which is evaluated against each custom resource to produce
    ///a field selector value. Only JSON paths without the array notation are allowed. Must
    ///point to a field of type string, boolean or integer. Types with enum values and strings
    ///with formats are allowed. If jsonPath refers to absent field in a resource, the jsonPath
    ///evaluates to an empty string. Must not point to metdata fields. Required.
    @JsonKey(name: "jsonPath")
    String jsonPath;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableField({
        required this.jsonPath,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableField.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableFieldFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableFieldToJson(this);
}


///subresources specify what subresources this version of the defined custom resource have.
///
///CustomResourceSubresources defines the status and scale subresources for CustomResources.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources {
    
    ///scale indicates the custom resource should serve a `/scale` subresource that returns an
    ///`autoscaling/v1` Scale object.
    @JsonKey(name: "scale")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale? scale;
    
    ///status indicates the custom resource should serve a `/status` subresource. When enabled:
    ///1. requests to the custom resource primary endpoint ignore changes to the `status` stanza
    ///of the object. 2. requests to the custom resource `/status` subresource ignore changes to
    ///anything other than the `status` stanza of the object.
    @JsonKey(name: "status")
    Map<String, dynamic>? status;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources({
        this.scale,
        this.status,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesToJson(this);
}


///scale indicates the custom resource should serve a `/scale` subresource that returns an
///`autoscaling/v1` Scale object.
///
///CustomResourceSubresourceScale defines how to serve the scale subresource for
///CustomResources.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale {
    
    ///labelSelectorPath defines the JSON path inside of a custom resource that corresponds to
    ///Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be
    ///a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler.
    ///The field pointed by this JSON path must be a string field (not a complex selector
    ///struct) which contains a serialized label selector in string form. More info:
    ///https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource
    ///If there is no value under the given path in the custom resource, the `status.selector`
    ///value in the `/scale` subresource will default to the empty string.
    @JsonKey(name: "labelSelectorPath")
    String? labelSelectorPath;
    
    ///specReplicasPath defines the JSON path inside of a custom resource that corresponds to
    ///Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a
    ///JSON Path under `.spec`. If there is no value under the given path in the custom
    ///resource, the `/scale` subresource will return an error on GET.
    @JsonKey(name: "specReplicasPath")
    String specReplicasPath;
    
    ///statusReplicasPath defines the JSON path inside of a custom resource that corresponds to
    ///Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be
    ///a JSON Path under `.status`. If there is no value under the given path in the custom
    ///resource, the `status.replicas` value in the `/scale` subresource will default to 0.
    @JsonKey(name: "statusReplicasPath")
    String statusReplicasPath;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale({
        this.labelSelectorPath,
        required this.specReplicasPath,
        required this.statusReplicasPath,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleToJson(this);
}


///status indicates the actual state of the CustomResourceDefinition
///
///CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
@JsonSerializable()
class Status {
    
    ///acceptedNames are the names that are actually being used to serve discovery. They may be
    ///different than the names in spec.
    @JsonKey(name: "acceptedNames")
    Names? acceptedNames;
    
    ///conditions indicate state for particular aspects of a CustomResourceDefinition
    @JsonKey(name: "conditions")
    List<CustomresourcedefinitionconditionApiextensionsV1>? conditions;
    
    ///storedVersions lists all versions of CustomResources that were ever persisted. Tracking
    ///these versions allows a migration path for stored versions in etcd. The field is mutable
    ///so a migration controller can finish a migration to another version (ensuring no old
    ///objects are left in storage), and then remove the rest of the versions from this list.
    ///Versions may not be removed from `spec.versions` while they exist in this list.
    @JsonKey(name: "storedVersions")
    List<String?>? storedVersions;

    Status({
        this.acceptedNames,
        this.conditions,
        this.storedVersions,
    });

    factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

    Map<String, dynamic> toJson() => _$StatusToJson(this);
}


///CustomResourceDefinitionCondition contains details for the current condition of this pod.
@JsonSerializable()
class CustomresourcedefinitionconditionApiextensionsV1 {
    
    ///lastTransitionTime last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///message is a human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///reason is a unique, one-word, CamelCase reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///status is the status of the condition. Can be True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///type is the type of the condition. Types include Established, NamesAccepted and
    ///Terminating.
    @JsonKey(name: "type")
    String? type;

    CustomresourcedefinitionconditionApiextensionsV1({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory CustomresourcedefinitionconditionApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionconditionApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionconditionApiextensionsV1ToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum CustomresourcedefinitionlistApiextensionsV1Kind {
    @JsonValue("CustomResourceDefinitionList")
    CUSTOM_RESOURCE_DEFINITION_LIST
}

final customresourcedefinitionlistApiextensionsV1KindValues = EnumValues({
    "CustomResourceDefinitionList": CustomresourcedefinitionlistApiextensionsV1Kind.CUSTOM_RESOURCE_DEFINITION_LIST
});


///Standard object's metadata More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
///
///ListMeta describes metadata that synthetic resources must have, including lists and
///various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
@JsonSerializable()
class CustomresourcedefinitionlistApiextensionsV1Metadata {
    
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

    CustomresourcedefinitionlistApiextensionsV1Metadata({
        this.metadataContinue,
        this.remainingItemCount,
        this.resourceVersion,
        this.selfLink,
    });

    factory CustomresourcedefinitionlistApiextensionsV1Metadata.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionlistApiextensionsV1MetadataFromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionlistApiextensionsV1MetadataToJson(this);
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
