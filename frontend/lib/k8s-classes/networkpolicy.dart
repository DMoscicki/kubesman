import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'networkpolicy.g.dart';


///NetworkPolicy describes what network traffic is allowed for a set of Pods
@JsonSerializable()
class Networkpolicy {
    
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
    
    ///spec represents the specification of the desired behavior for this NetworkPolicy.
    @JsonKey(name: "spec")
    IoK8SApiNetworkingV1NetworkPolicySpec? spec;

    Networkpolicy({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
    });

    factory Networkpolicy.fromJson(Map<String, dynamic> json) => _$NetworkpolicyFromJson(json);

    Map<String, dynamic> toJson() => _$NetworkpolicyToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("NetworkPolicy")
    NETWORK_POLICY
}

final kindValues = EnumValues({
    "NetworkPolicy": Kind.NETWORK_POLICY
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


///spec represents the specification of the desired behavior for this NetworkPolicy.
///
///NetworkPolicySpec provides the specification of a NetworkPolicy
@JsonSerializable()
class IoK8SApiNetworkingV1NetworkPolicySpec {
    
    ///egress is a list of egress rules to be applied to the selected pods. Outgoing traffic is
    ///allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise
    ///allows the traffic), OR if the traffic matches at least one egress rule across all of the
    ///NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this
    ///NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it
    ///selects are isolated by default). This field is beta-level in 1.8
    @JsonKey(name: "egress")
    List<IoK8SApiNetworkingV1NetworkPolicyEgressRule>? egress;
    
    ///ingress is a list of ingress rules to be applied to the selected pods. Traffic is allowed
    ///to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise
    ///allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic
    ///matches at least one ingress rule across all of the NetworkPolicy objects whose
    ///podSelector matches the pod. If this field is empty then this NetworkPolicy does not
    ///allow any traffic (and serves solely to ensure that the pods it selects are isolated by
    ///default)
    @JsonKey(name: "ingress")
    List<IoK8SApiNetworkingV1NetworkPolicyIngressRule>? ingress;
    
    ///podSelector selects the pods to which this NetworkPolicy object applies. The array of
    ///ingress rules is applied to any pods selected by this field. Multiple network policies
    ///can select the same set of pods. In this case, the ingress rules for each are combined
    ///additively. This field is NOT optional and follows standard label selector semantics. An
    ///empty podSelector matches all pods in this namespace.
    @JsonKey(name: "podSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector podSelector;
    
    ///policyTypes is a list of rule types that the NetworkPolicy relates to. Valid options are
    ///["Ingress"], ["Egress"], or ["Ingress", "Egress"]. If this field is not specified, it
    ///will default based on the existence of ingress or egress rules; policies that contain an
    ///egress section are assumed to affect egress, and all policies (whether or not they
    ///contain an ingress section) are assumed to affect ingress. If you want to write an
    ///egress-only policy, you must explicitly specify policyTypes [ "Egress" ]. Likewise, if
    ///you want to write a policy that specifies that no egress is allowed, you must specify a
    ///policyTypes value that include "Egress" (since such a policy would not include an egress
    ///section and would otherwise default to just [ "Ingress" ]). This field is beta-level in
    ///1.8
    @JsonKey(name: "policyTypes")
    List<String>? policyTypes;

    IoK8SApiNetworkingV1NetworkPolicySpec({
        this.egress,
        this.ingress,
        required this.podSelector,
        this.policyTypes,
    });

    factory IoK8SApiNetworkingV1NetworkPolicySpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1NetworkPolicySpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1NetworkPolicySpecToJson(this);
}


///NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods
///matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to.
///This type is beta-level in 1.8
@JsonSerializable()
class IoK8SApiNetworkingV1NetworkPolicyEgressRule {
    
    ///ports is a list of destination ports for outgoing traffic. Each item in this list is
    ///combined using a logical OR. If this field is empty or missing, this rule matches all
    ///ports (traffic not restricted by port). If this field is present and contains at least
    ///one item, then this rule allows traffic only if the traffic matches at least one port in
    ///the list.
    @JsonKey(name: "ports")
    List<IoK8SApiNetworkingV1NetworkPolicyPort>? ports;
    
    ///to is a list of destinations for outgoing traffic of pods selected for this rule. Items
    ///in this list are combined using a logical OR operation. If this field is empty or
    ///missing, this rule matches all destinations (traffic not restricted by destination). If
    ///this field is present and contains at least one item, this rule allows traffic only if
    ///the traffic matches at least one item in the to list.
    @JsonKey(name: "to")
    List<IoK8SApiNetworkingV1NetworkPolicyPeer>? to;

    IoK8SApiNetworkingV1NetworkPolicyEgressRule({
        this.ports,
        this.to,
    });

    factory IoK8SApiNetworkingV1NetworkPolicyEgressRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1NetworkPolicyEgressRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1NetworkPolicyEgressRuleToJson(this);
}


///NetworkPolicyPort describes a port to allow traffic on
@JsonSerializable()
class IoK8SApiNetworkingV1NetworkPolicyPort {
    
    ///endPort indicates that the range of ports from port to endPort if set, inclusive, should
    ///be allowed by the policy. This field cannot be defined if the port field is not defined
    ///or if the port field is defined as a named (string) port. The endPort must be equal or
    ///greater than port.
    @JsonKey(name: "endPort")
    int? endPort;
    
    ///port represents the port on the given protocol. This can either be a numerical or named
    ///port on a pod. If this field is not provided, this matches all port names and numbers. If
    ///present, only traffic on the specified protocol AND port will be matched.
    @JsonKey(name: "port")
    dynamic port;
    
    ///protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match. If not
    ///specified, this field defaults to TCP.
    @JsonKey(name: "protocol")
    String? protocol;

    IoK8SApiNetworkingV1NetworkPolicyPort({
        this.endPort,
        this.port,
        this.protocol,
    });

    factory IoK8SApiNetworkingV1NetworkPolicyPort.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1NetworkPolicyPortFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1NetworkPolicyPortToJson(this);
}


///NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of
///fields are allowed
@JsonSerializable()
class IoK8SApiNetworkingV1NetworkPolicyPeer {
    
    ///ipBlock defines policy on a particular IPBlock. If this field is set then neither of the
    ///other fields can be.
    @JsonKey(name: "ipBlock")
    IoK8SApiNetworkingV1IpBlock? ipBlock;
    
    ///namespaceSelector selects namespaces using cluster-scoped labels. This field follows
    ///standard label selector semantics; if present but empty, it selects all namespaces.
    ///
    ///If podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods
    ///matching podSelector in the namespaces selected by namespaceSelector. Otherwise it
    ///selects all pods in the namespaces selected by namespaceSelector.
    @JsonKey(name: "namespaceSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? namespaceSelector;
    
    ///podSelector is a label selector which selects pods. This field follows standard label
    ///selector semantics; if present but empty, it selects all pods.
    ///
    ///If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods
    ///matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it
    ///selects the pods matching podSelector in the policy's own namespace.
    @JsonKey(name: "podSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? podSelector;

    IoK8SApiNetworkingV1NetworkPolicyPeer({
        this.ipBlock,
        this.namespaceSelector,
        this.podSelector,
    });

    factory IoK8SApiNetworkingV1NetworkPolicyPeer.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1NetworkPolicyPeerFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1NetworkPolicyPeerToJson(this);
}


///ipBlock defines policy on a particular IPBlock. If this field is set then neither of the
///other fields can be.
///
///IPBlock describes a particular CIDR (Ex. "192.168.1.0/24","2001:db8::/64") that is
///allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry
///describes CIDRs that should not be included within this rule.
@JsonSerializable()
class IoK8SApiNetworkingV1IpBlock {
    
    ///cidr is a string representing the IPBlock Valid examples are "192.168.1.0/24" or
    ///"2001:db8::/64"
    @JsonKey(name: "cidr")
    String cidr;
    
    ///except is a slice of CIDRs that should not be included within an IPBlock Valid examples
    ///are "192.168.1.0/24" or "2001:db8::/64" Except values will be rejected if they are
    ///outside the cidr range
    @JsonKey(name: "except")
    List<String>? except;

    IoK8SApiNetworkingV1IpBlock({
        required this.cidr,
        this.except,
    });

    factory IoK8SApiNetworkingV1IpBlock.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IpBlockFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IpBlockToJson(this);
}


///namespaceSelector selects namespaces using cluster-scoped labels. This field follows
///standard label selector semantics; if present but empty, it selects all namespaces.
///
///If podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods
///matching podSelector in the namespaces selected by namespaceSelector. Otherwise it
///selects all pods in the namespaces selected by namespaceSelector.
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
///
///podSelector is a label selector which selects pods. This field follows standard label
///selector semantics; if present but empty, it selects all pods.
///
///If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods
///matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it
///selects the pods matching podSelector in the policy's own namespace.
///
///podSelector selects the pods to which this NetworkPolicy object applies. The array of
///ingress rules is applied to any pods selected by this field. Multiple network policies
///can select the same set of pods. In this case, the ingress rules for each are combined
///additively. This field is NOT optional and follows standard label selector semantics. An
///empty podSelector matches all pods in this namespace.
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


///NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the
///pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and
///from.
@JsonSerializable()
class IoK8SApiNetworkingV1NetworkPolicyIngressRule {
    
    ///from is a list of sources which should be able to access the pods selected for this rule.
    ///Items in this list are combined using a logical OR operation. If this field is empty or
    ///missing, this rule matches all sources (traffic not restricted by source). If this field
    ///is present and contains at least one item, this rule allows traffic only if the traffic
    ///matches at least one item in the from list.
    @JsonKey(name: "from")
    List<IoK8SApiNetworkingV1NetworkPolicyPeer>? from;
    
    ///ports is a list of ports which should be made accessible on the pods selected for this
    ///rule. Each item in this list is combined using a logical OR. If this field is empty or
    ///missing, this rule matches all ports (traffic not restricted by port). If this field is
    ///present and contains at least one item, then this rule allows traffic only if the traffic
    ///matches at least one port in the list.
    @JsonKey(name: "ports")
    List<IoK8SApiNetworkingV1NetworkPolicyPort>? ports;

    IoK8SApiNetworkingV1NetworkPolicyIngressRule({
        this.from,
        this.ports,
    });

    factory IoK8SApiNetworkingV1NetworkPolicyIngressRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1NetworkPolicyIngressRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1NetworkPolicyIngressRuleToJson(this);
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
