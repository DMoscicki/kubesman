import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'certificatesigningrequest_certificates_v1.g.dart';


///CertificateSigningRequest objects provide a mechanism to obtain x509 certificates by
///submitting a certificate signing request, and having it asynchronously approved and
///issued.
///
///Kubelets use this API to obtain:
///1. client certificates to authenticate to kube-apiserver (with the
///"kubernetes.io/kube-apiserver-client-kubelet" signerName).
///2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with
///the "kubernetes.io/kubelet-serving" signerName).
///
///This API can be used to request client certificates to authenticate to kube-apiserver
///(with the "kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates
///from custom non-Kubernetes signers.
@JsonSerializable()
class CertificatesigningrequestCertificatesV1 {
    
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
    @JsonKey(name: "metadata")
    Metadata? metadata;
    
    ///spec contains the certificate request, and is immutable after creation. Only the request,
    ///signerName, expirationSeconds, and usages fields can be set on creation. Other fields are
    ///derived by Kubernetes and cannot be modified by users.
    @JsonKey(name: "spec")
    IoK8SApiCertificatesV1CertificateSigningRequestSpec spec;
    
    ///status contains information about whether the request is approved or denied, and the
    ///certificate issued by the signer, or the failure condition indicating signer failure.
    @JsonKey(name: "status")
    IoK8SApiCertificatesV1CertificateSigningRequestStatus? status;

    CertificatesigningrequestCertificatesV1({
        this.apiVersion,
        this.kind,
        this.metadata,
        required this.spec,
        this.status,
    });

    factory CertificatesigningrequestCertificatesV1.fromJson(Map<String, dynamic> json) => _$CertificatesigningrequestCertificatesV1FromJson(json);

    Map<String, dynamic> toJson() => _$CertificatesigningrequestCertificatesV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("certificates.k8s.io/v1")
    CERTIFICATES_K8_S_IO_V1
}

final apiVersionValues = EnumValues({
    "certificates.k8s.io/v1": ApiVersion.CERTIFICATES_K8_S_IO_V1
});


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("CertificateSigningRequest")
    CERTIFICATE_SIGNING_REQUEST
}

final kindValues = EnumValues({
    "CertificateSigningRequest": Kind.CERTIFICATE_SIGNING_REQUEST
});


///ObjectMeta is metadata that all persisted resources must have, which includes all objects
///users must create.
@JsonSerializable()
class Metadata {
    
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

    Metadata({
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

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

    Map<String, dynamic> toJson() => _$MetadataToJson(this);
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


///spec contains the certificate request, and is immutable after creation. Only the request,
///signerName, expirationSeconds, and usages fields can be set on creation. Other fields are
///derived by Kubernetes and cannot be modified by users.
///
///CertificateSigningRequestSpec contains the certificate request.
@JsonSerializable()
class IoK8SApiCertificatesV1CertificateSigningRequestSpec {
    
    ///expirationSeconds is the requested duration of validity of the issued certificate. The
    ///certificate signer may issue a certificate with a different validity duration so a client
    ///must check the delta between the notBefore and and notAfter fields in the issued
    ///certificate to determine the actual duration.
    ///
    ///The v1.22+ in-tree implementations of the well-known Kubernetes signers will honor this
    ///field as long as the requested duration is not greater than the maximum duration they
    ///will honor per the --cluster-signing-duration CLI flag to the Kubernetes controller
    ///manager.
    ///
    ///Certificate signers may not honor this field for various reasons:
    ///
    ///1. Old signer that is unaware of the field (such as the in-tree
    ///implementations prior to v1.22)
    ///2. Signer whose configured maximum is shorter than the requested duration
    ///3. Signer whose configured minimum is longer than the requested duration
    ///
    ///The minimum valid value for expirationSeconds is 600, i.e. 10 minutes.
    @JsonKey(name: "expirationSeconds")
    int? expirationSeconds;
    
    ///extra contains extra attributes of the user that created the CertificateSigningRequest.
    ///Populated by the API server on creation and immutable.
    @JsonKey(name: "extra")
    Map<String, List<String>>? extra;
    
    ///groups contains group membership of the user that created the CertificateSigningRequest.
    ///Populated by the API server on creation and immutable.
    @JsonKey(name: "groups")
    List<String>? groups;
    
    ///request contains an x509 certificate signing request encoded in a "CERTIFICATE REQUEST"
    ///PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded.
    @JsonKey(name: "request")
    String request;
    
    ///signerName indicates the requested signer, and is a qualified name.
    ///
    ///List/watch requests for CertificateSigningRequests can filter on this field using a
    ///"spec.signerName=NAME" fieldSelector.
    ///
    ///Well-known Kubernetes signers are:
    ///1. "kubernetes.io/kube-apiserver-client": issues client certificates that can be used to
    ///authenticate to kube-apiserver.
    ///Requests for this signer are never auto-approved by kube-controller-manager, can be
    ///issued by the "csrsigning" controller in kube-controller-manager.
    ///2. "kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that
    ///kubelets use to authenticate to kube-apiserver.
    ///Requests for this signer can be auto-approved by the "csrapproving" controller in
    ///kube-controller-manager, and can be issued by the "csrsigning" controller in
    ///kube-controller-manager.
    ///3. "kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve
    ///TLS endpoints, which kube-apiserver can connect to securely.
    ///Requests for this signer are never auto-approved by kube-controller-manager, and can be
    ///issued by the "csrsigning" controller in kube-controller-manager.
    ///
    ///More details are available at
    ///https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers
    ///
    ///Custom signerNames can also be specified. The signer defines:
    ///1. Trust distribution: how trust (CA bundles) are distributed.
    ///2. Permitted subjects: and behavior when a disallowed subject is requested.
    ///3. Required, permitted, or forbidden x509 extensions in the request (including whether
    ///subjectAltNames are allowed, which types, restrictions on allowed values) and behavior
    ///when a disallowed extension is requested.
    ///4. Required, permitted, or forbidden key usages / extended key usages.
    ///5. Expiration/certificate lifetime: whether it is fixed by the signer, configurable by
    ///the admin.
    ///6. Whether or not requests for CA certificates are allowed.
    @JsonKey(name: "signerName")
    String signerName;
    
    ///uid contains the uid of the user that created the CertificateSigningRequest. Populated by
    ///the API server on creation and immutable.
    @JsonKey(name: "uid")
    String? uid;
    
    ///usages specifies a set of key usages requested in the issued certificate.
    ///
    ///Requests for TLS client certificates typically request: "digital signature", "key
    ///encipherment", "client auth".
    ///
    ///Requests for TLS serving certificates typically request: "key encipherment", "digital
    ///signature", "server auth".
    ///
    ///Valid values are:
    ///"signing", "digital signature", "content commitment",
    ///"key encipherment", "key agreement", "data encipherment",
    ///"cert sign", "crl sign", "encipher only", "decipher only", "any",
    ///"server auth", "client auth",
    ///"code signing", "email protection", "s/mime",
    ///"ipsec end system", "ipsec tunnel", "ipsec user",
    ///"timestamping", "ocsp signing", "microsoft sgc", "netscape sgc"
    @JsonKey(name: "usages")
    List<String>? usages;
    
    ///username contains the name of the user that created the CertificateSigningRequest.
    ///Populated by the API server on creation and immutable.
    @JsonKey(name: "username")
    String? username;

    IoK8SApiCertificatesV1CertificateSigningRequestSpec({
        this.expirationSeconds,
        this.extra,
        this.groups,
        required this.request,
        required this.signerName,
        this.uid,
        this.usages,
        this.username,
    });

    factory IoK8SApiCertificatesV1CertificateSigningRequestSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiCertificatesV1CertificateSigningRequestSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCertificatesV1CertificateSigningRequestSpecToJson(this);
}


///status contains information about whether the request is approved or denied, and the
///certificate issued by the signer, or the failure condition indicating signer failure.
///
///CertificateSigningRequestStatus contains conditions used to indicate
///approved/denied/failed status of the request, and the issued certificate.
@JsonSerializable()
class IoK8SApiCertificatesV1CertificateSigningRequestStatus {
    
    ///certificate is populated with an issued certificate by the signer after an Approved
    ///condition is present. This field is set via the /status subresource. Once populated, this
    ///field is immutable.
    ///
    ///If the certificate signing request is denied, a condition of type "Denied" is added and
    ///this field remains empty. If the signer cannot issue the certificate, a condition of type
    ///"Failed" is added and this field remains empty.
    ///
    ///Validation requirements:
    ///1. certificate must contain one or more PEM blocks.
    ///2. All PEM blocks must have the "CERTIFICATE" label, contain no headers, and the encoded
    ///data
    ///must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.
    ///3. Non-PEM content may appear before or after the "CERTIFICATE" PEM blocks and is
    ///unvalidated,
    ///to allow for explanatory text as described in section 5.2 of RFC7468.
    ///
    ///If more than one PEM block is present, and the definition of the requested
    ///spec.signerName does not indicate otherwise, the first block is the issued certificate,
    ///and subsequent blocks should be treated as intermediate certificates and presented in TLS
    ///handshakes.
    ///
    ///The certificate is encoded in PEM format.
    ///
    ///When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists
    ///of:
    ///
    ///base64(
    ///-----BEGIN CERTIFICATE-----
    ///...
    ///-----END CERTIFICATE-----
    ///)
    @JsonKey(name: "certificate")
    String? certificate;
    
    ///conditions applied to the request. Known conditions are "Approved", "Denied", and
    ///"Failed".
    @JsonKey(name: "conditions")
    List<IoK8SApiCertificatesV1CertificateSigningRequestCondition>? conditions;

    IoK8SApiCertificatesV1CertificateSigningRequestStatus({
        this.certificate,
        this.conditions,
    });

    factory IoK8SApiCertificatesV1CertificateSigningRequestStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCertificatesV1CertificateSigningRequestStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCertificatesV1CertificateSigningRequestStatusToJson(this);
}


///CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest
///object
@JsonSerializable()
class IoK8SApiCertificatesV1CertificateSigningRequestCondition {
    
    ///lastTransitionTime is the time the condition last transitioned from one status to
    ///another. If unset, when a new condition type is added or an existing condition's status
    ///is changed, the server defaults this to the current time.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///lastUpdateTime is the time of the last update to this condition
    @JsonKey(name: "lastUpdateTime")
    DateTime? lastUpdateTime;
    
    ///message contains a human readable message with details about the request state
    @JsonKey(name: "message")
    String? message;
    
    ///reason indicates a brief reason for the request state
    @JsonKey(name: "reason")
    String? reason;
    
    ///status of the condition, one of True, False, Unknown. Approved, Denied, and Failed
    ///conditions may not be "False" or "Unknown".
    @JsonKey(name: "status")
    String status;
    
    ///type of the condition. Known conditions are "Approved", "Denied", and "Failed".
    ///
    ///An "Approved" condition is added via the /approval subresource, indicating the request
    ///was approved and should be issued by the signer.
    ///
    ///A "Denied" condition is added via the /approval subresource, indicating the request was
    ///denied and should not be issued by the signer.
    ///
    ///A "Failed" condition is added via the /status subresource, indicating the signer failed
    ///to issue the certificate.
    ///
    ///Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed
    ///conditions cannot be removed once added.
    ///
    ///Only one condition of a given type is allowed.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCertificatesV1CertificateSigningRequestCondition({
        this.lastTransitionTime,
        this.lastUpdateTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiCertificatesV1CertificateSigningRequestCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiCertificatesV1CertificateSigningRequestConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCertificatesV1CertificateSigningRequestConditionToJson(this);
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
