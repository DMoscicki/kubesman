import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'matchresources_admissionregistration_v1_alpha1.g.dart';


///MatchResources decides whether to run the admission control policy on an object based on
///whether it meets the match criteria. The exclude rules take precedence over include rules
///(if a resource matches both, it is excluded)
@JsonSerializable()
class MatchresourcesAdmissionregistrationV1Alpha1 {
    
    ///ExcludeResourceRules describes what operations on what resources/subresources the
    ///ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over
    ///include rules (if a resource matches both, it is excluded)
    @JsonKey(name: "excludeResourceRules")
    List<IoK8SApiAdmissionregistrationV1Alpha1NamedRuleWithOperations>? excludeResourceRules;
    
    ///matchPolicy defines how the "MatchResources" list is used to match incoming requests.
    ///Allowed values are "Exact" or "Equivalent".
    ///
    ///- Exact: match a request only if it exactly matches a specified rule. For example, if
    ///deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but
    ///"rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources:
    ///["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to
    ///the ValidatingAdmissionPolicy.
    ///
    ///- Equivalent: match a request if modifies a resource listed in rules, even via another
    ///API group or version. For example, if deployments can be modified via apps/v1,
    ///apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"],
    ///apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or
    ///extensions/v1beta1 would be converted to apps/v1 and sent to the
    ///ValidatingAdmissionPolicy.
    ///
    ///Defaults to "Equivalent"
    @JsonKey(name: "matchPolicy")
    String? matchPolicy;
    
    ///NamespaceSelector decides whether to run the admission control policy on an object based
    ///on whether the namespace for that object matches the selector. If the object itself is a
    ///namespace, the matching is performed on object.metadata.labels. If the object is another
    ///cluster scoped resource, it never skips the policy.
    ///
    ///For example, to run the webhook on any objects whose namespace is not associated with
    ///"runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
    ///"matchExpressions": [
    ///{
    ///"key": "runlevel",
    ///"operator": "NotIn",
    ///"values": [
    ///"0",
    ///"1"
    ///]
    ///}
    ///]
    ///}
    ///
    ///If instead you want to only run the policy on any objects whose namespace is associated
    ///with the "environment" of "prod" or "staging"; you will set the selector as follows:
    ///"namespaceSelector": {
    ///"matchExpressions": [
    ///{
    ///"key": "environment",
    ///"operator": "In",
    ///"values": [
    ///"prod",
    ///"staging"
    ///]
    ///}
    ///]
    ///}
    ///
    ///See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more
    ///examples of label selectors.
    ///
    ///Default to the empty LabelSelector, which matches everything.
    @JsonKey(name: "namespaceSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? namespaceSelector;
    
    ///ObjectSelector decides whether to run the validation based on if the object has matching
    ///labels. objectSelector is evaluated against both the oldObject and newObject that would
    ///be sent to the cel validation, and is considered to match if either object matches the
    ///selector. A null object (oldObject in the case of create, or newObject in the case of
    ///delete) or an object that cannot have labels (like a DeploymentRollback or a
    ///PodProxyOptions object) is not considered to match. Use the object selector only if the
    ///webhook is opt-in, because end users may skip the admission webhook by setting the
    ///labels. Default to the empty LabelSelector, which matches everything.
    @JsonKey(name: "objectSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? objectSelector;
    
    ///ResourceRules describes what operations on what resources/subresources the
    ///ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches
    ///_any_ Rule.
    @JsonKey(name: "resourceRules")
    List<IoK8SApiAdmissionregistrationV1Alpha1NamedRuleWithOperations>? resourceRules;

    MatchresourcesAdmissionregistrationV1Alpha1({
        this.excludeResourceRules,
        this.matchPolicy,
        this.namespaceSelector,
        this.objectSelector,
        this.resourceRules,
    });

    factory MatchresourcesAdmissionregistrationV1Alpha1.fromJson(Map<String, dynamic> json) => _$MatchresourcesAdmissionregistrationV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$MatchresourcesAdmissionregistrationV1Alpha1ToJson(this);
}


///NamedRuleWithOperations is a tuple of Operations and Resources with ResourceNames.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Alpha1NamedRuleWithOperations {
    
    ///APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is
    ///present, the length of the slice must be one. Required.
    @JsonKey(name: "apiGroups")
    List<String>? apiGroups;
    
    ///APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is
    ///present, the length of the slice must be one. Required.
    @JsonKey(name: "apiVersions")
    List<String>? apiVersions;
    
    ///Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE,
    ///CONNECT or * for all of those operations and any future admission operations that are
    ///added. If '*' is present, the length of the slice must be one. Required.
    @JsonKey(name: "operations")
    List<String>? operations;
    
    ///ResourceNames is an optional white list of names that the rule applies to.  An empty set
    ///means that everything is allowed.
    @JsonKey(name: "resourceNames")
    List<String>? resourceNames;
    
    ///Resources is a list of resources this rule applies to.
    ///
    ///For example: 'pods' means pods. 'pods/log' means the log subresource of pods. '*' means
    ///all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale'
    ///means all scale subresources. '*/*' means all resources and their subresources.
    ///
    ///If wildcard is present, the validation rule will ensure resources do not overlap with
    ///each other.
    ///
    ///Depending on the enclosing object, subresources might not be allowed. Required.
    @JsonKey(name: "resources")
    List<String>? resources;
    
    ///scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*"
    ///"Cluster" means that only cluster-scoped resources will match this rule. Namespace API
    ///objects are cluster-scoped. "Namespaced" means that only namespaced resources will match
    ///this rule. "*" means that there are no scope restrictions. Subresources match the scope
    ///of their parent resource. Default is "*".
    @JsonKey(name: "scope")
    String? scope;

    IoK8SApiAdmissionregistrationV1Alpha1NamedRuleWithOperations({
        this.apiGroups,
        this.apiVersions,
        this.operations,
        this.resourceNames,
        this.resources,
        this.scope,
    });

    factory IoK8SApiAdmissionregistrationV1Alpha1NamedRuleWithOperations.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1Alpha1NamedRuleWithOperationsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1Alpha1NamedRuleWithOperationsToJson(this);
}


///NamespaceSelector decides whether to run the admission control policy on an object based
///on whether the namespace for that object matches the selector. If the object itself is a
///namespace, the matching is performed on object.metadata.labels. If the object is another
///cluster scoped resource, it never skips the policy.
///
///For example, to run the webhook on any objects whose namespace is not associated with
///"runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
///"matchExpressions": [
///{
///"key": "runlevel",
///"operator": "NotIn",
///"values": [
///"0",
///"1"
///]
///}
///]
///}
///
///If instead you want to only run the policy on any objects whose namespace is associated
///with the "environment" of "prod" or "staging"; you will set the selector as follows:
///"namespaceSelector": {
///"matchExpressions": [
///{
///"key": "environment",
///"operator": "In",
///"values": [
///"prod",
///"staging"
///]
///}
///]
///}
///
///See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more
///examples of label selectors.
///
///Default to the empty LabelSelector, which matches everything.
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
///
///ObjectSelector decides whether to run the validation based on if the object has matching
///labels. objectSelector is evaluated against both the oldObject and newObject that would
///be sent to the cel validation, and is considered to match if either object matches the
///selector. A null object (oldObject in the case of create, or newObject in the case of
///delete) or an object that cannot have labels (like a DeploymentRollback or a
///PodProxyOptions object) is not considered to match. Use the object selector only if the
///webhook is opt-in, because end users may skip the admission webhook by setting the
///labels. Default to the empty LabelSelector, which matches everything.
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
