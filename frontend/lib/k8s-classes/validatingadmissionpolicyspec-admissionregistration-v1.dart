import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'validatingadmissionpolicyspec_admissionregistration_v1.g.dart';


///ValidatingAdmissionPolicySpec is the specification of the desired behavior of the
///AdmissionPolicy.
@JsonSerializable()
class ValidatingadmissionpolicyspecAdmissionregistrationV1 {
    
    ///auditAnnotations contains CEL expressions which are used to produce audit annotations for
    ///the audit event of the API request. validations and auditAnnotations may not both be
    ///empty; a least one of validations or auditAnnotations is required.
    @JsonKey(name: "auditAnnotations")
    List<IoK8SApiAdmissionregistrationV1AuditAnnotation>? auditAnnotations;
    
    ///failurePolicy defines how to handle failures for the admission policy. Failures can occur
    ///from CEL expression parse errors, type check errors, runtime errors and invalid or
    ///mis-configured policy definitions or bindings.
    ///
    ///A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid
    ///if spec.paramRef.name refers to a non-existent resource.
    ///
    ///failurePolicy does not define how validations that evaluate to false are handled.
    ///
    ///When failurePolicy is set to Fail, ValidatingAdmissionPolicyBinding validationActions
    ///define how failures are enforced.
    ///
    ///Allowed values are Ignore or Fail. Defaults to Fail.
    @JsonKey(name: "failurePolicy")
    String? failurePolicy;
    
    ///MatchConditions is a list of conditions that must be met for a request to be validated.
    ///Match conditions filter requests that have already been matched by the rules,
    ///namespaceSelector, and objectSelector. An empty list of matchConditions matches all
    ///requests. There are a maximum of 64 match conditions allowed.
    ///
    ///If a parameter object is provided, it can be accessed via the `params` handle in the same
    ///manner as validation expressions.
    ///
    ///The exact matching logic is (in order):
    ///1. If ANY matchCondition evaluates to FALSE, the policy is skipped.
    ///2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.
    ///3. If any matchCondition evaluates to an error (but none are FALSE):
    ///- If failurePolicy=Fail, reject the request
    ///- If failurePolicy=Ignore, the policy is skipped
    @JsonKey(name: "matchConditions")
    List<IoK8SApiAdmissionregistrationV1MatchCondition>? matchConditions;
    
    ///MatchConstraints specifies what resources this policy is designed to validate. The
    ///AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order
    ///to prevent clusters from being put into an unstable state that cannot be recovered from
    ///via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and
    ///ValidatingAdmissionPolicyBinding. Required.
    @JsonKey(name: "matchConstraints")
    IoK8SApiAdmissionregistrationV1MatchResources? matchConstraints;
    
    ///ParamKind specifies the kind of resources used to parameterize this policy. If absent,
    ///there are no parameters for this policy and the param CEL variable will not be provided
    ///to validation expressions. If ParamKind refers to a non-existent kind, this policy
    ///definition is mis-configured and the FailurePolicy is applied. If paramKind is specified
    ///but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be
    ///null.
    @JsonKey(name: "paramKind")
    IoK8SApiAdmissionregistrationV1ParamKind? paramKind;
    
    ///Validations contain CEL expressions which is used to apply the validation. Validations
    ///and AuditAnnotations may not both be empty; a minimum of one Validations or
    ///AuditAnnotations is required.
    @JsonKey(name: "validations")
    List<IoK8SApiAdmissionregistrationV1Validation>? validations;
    
    ///Variables contain definitions of variables that can be used in composition of other
    ///expressions. Each variable is defined as a named CEL expression. The variables defined
    ///here will be available under `variables` in other expressions of the policy except
    ///MatchConditions because MatchConditions are evaluated before the rest of the policy.
    ///
    ///The expression of a variable can refer to other variables defined earlier in the list but
    ///not those after. Thus, Variables must be sorted by the order of first appearance and
    ///acyclic.
    @JsonKey(name: "variables")
    List<IoK8SApiAdmissionregistrationV1Variable>? variables;

    ValidatingadmissionpolicyspecAdmissionregistrationV1({
        this.auditAnnotations,
        this.failurePolicy,
        this.matchConditions,
        this.matchConstraints,
        this.paramKind,
        this.validations,
        this.variables,
    });

    factory ValidatingadmissionpolicyspecAdmissionregistrationV1.fromJson(Map<String, dynamic> json) => _$ValidatingadmissionpolicyspecAdmissionregistrationV1FromJson(json);

    Map<String, dynamic> toJson() => _$ValidatingadmissionpolicyspecAdmissionregistrationV1ToJson(this);
}


///AuditAnnotation describes how to produce an audit annotation for an API request.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1AuditAnnotation {
    
    ///key specifies the audit annotation key. The audit annotation keys of a
    ///ValidatingAdmissionPolicy must be unique. The key must be a qualified name
    ///([A-Za-z0-9][-A-Za-z0-9_.]*) no more than 63 bytes in length.
    ///
    ///The key is combined with the resource name of the ValidatingAdmissionPolicy to construct
    ///an audit annotation key: "{ValidatingAdmissionPolicy name}/{key}".
    ///
    ///If an admission webhook uses the same resource name as this ValidatingAdmissionPolicy and
    ///the same audit annotation key, the annotation key will be identical. In this case, the
    ///first annotation written with the key will be included in the audit event and all
    ///subsequent annotations with the same key will be discarded.
    ///
    ///Required.
    @JsonKey(name: "key")
    String key;
    
    ///valueExpression represents the expression which is evaluated by CEL to produce an audit
    ///annotation value. The expression must evaluate to either a string or null value. If the
    ///expression evaluates to a string, the audit annotation is included with the string value.
    ///If the expression evaluates to null or empty string the audit annotation will be omitted.
    ///The valueExpression may be no longer than 5kb in length. If the result of the
    ///valueExpression is more than 10kb in length, it will be truncated to 10kb.
    ///
    ///If multiple ValidatingAdmissionPolicyBinding resources match an API request, then the
    ///valueExpression will be evaluated for each binding. All unique values produced by the
    ///valueExpressions will be joined together in a comma-separated list.
    ///
    ///Required.
    @JsonKey(name: "valueExpression")
    String valueExpression;

    IoK8SApiAdmissionregistrationV1AuditAnnotation({
        required this.key,
        required this.valueExpression,
    });

    factory IoK8SApiAdmissionregistrationV1AuditAnnotation.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1AuditAnnotationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1AuditAnnotationToJson(this);
}


///MatchCondition represents a condition which must by fulfilled for a request to be sent to
///a webhook.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1MatchCondition {
    
    ///Expression represents the expression which will be evaluated by CEL. Must evaluate to
    ///bool. CEL expressions have access to the contents of the AdmissionRequest and Authorizer,
    ///organized into CEL variables:
    ///
    ///'object' - The object from the incoming request. The value is null for DELETE requests.
    ///'oldObject' - The existing object. The value is null for CREATE requests. 'request' -
    ///Attributes of the admission request(/pkg/apis/admission/types.go#AdmissionRequest).
    ///'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the
    ///principal (user or service account) of the request.
    ///See https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz
    ///'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer' and
    ///configured with the
    ///request resource.
    ///Documentation on CEL: https://kubernetes.io/docs/reference/using-api/cel/
    ///
    ///Required.
    @JsonKey(name: "expression")
    String expression;
    
    ///Name is an identifier for this match condition, used for strategic merging of
    ///MatchConditions, as well as providing an identifier for logging purposes. A good name
    ///should be descriptive of the associated expression. Name must be a qualified name
    ///consisting of alphanumeric characters, '-', '_' or '.', and must start and end with an
    ///alphanumeric character (e.g. 'MyName',  or 'my.name',  or '123-abc', regex used for
    ///validation is '([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]') with an optional DNS subdomain
    ///prefix and '/' (e.g. 'example.com/MyName')
    ///
    ///Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiAdmissionregistrationV1MatchCondition({
        required this.expression,
        required this.name,
    });

    factory IoK8SApiAdmissionregistrationV1MatchCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1MatchConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1MatchConditionToJson(this);
}


///MatchConstraints specifies what resources this policy is designed to validate. The
///AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order
///to prevent clusters from being put into an unstable state that cannot be recovered from
///via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and
///ValidatingAdmissionPolicyBinding. Required.
///
///MatchResources decides whether to run the admission control policy on an object based on
///whether it meets the match criteria. The exclude rules take precedence over include rules
///(if a resource matches both, it is excluded)
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1MatchResources {
    
    ///ExcludeResourceRules describes what operations on what resources/subresources the
    ///ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over
    ///include rules (if a resource matches both, it is excluded)
    @JsonKey(name: "excludeResourceRules")
    List<IoK8SApiAdmissionregistrationV1NamedRuleWithOperations>? excludeResourceRules;
    
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
    List<IoK8SApiAdmissionregistrationV1NamedRuleWithOperations>? resourceRules;

    IoK8SApiAdmissionregistrationV1MatchResources({
        this.excludeResourceRules,
        this.matchPolicy,
        this.namespaceSelector,
        this.objectSelector,
        this.resourceRules,
    });

    factory IoK8SApiAdmissionregistrationV1MatchResources.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1MatchResourcesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1MatchResourcesToJson(this);
}


///NamedRuleWithOperations is a tuple of Operations and Resources with ResourceNames.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1NamedRuleWithOperations {
    
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

    IoK8SApiAdmissionregistrationV1NamedRuleWithOperations({
        this.apiGroups,
        this.apiVersions,
        this.operations,
        this.resourceNames,
        this.resources,
        this.scope,
    });

    factory IoK8SApiAdmissionregistrationV1NamedRuleWithOperations.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1NamedRuleWithOperationsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1NamedRuleWithOperationsToJson(this);
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


///ParamKind specifies the kind of resources used to parameterize this policy. If absent,
///there are no parameters for this policy and the param CEL variable will not be provided
///to validation expressions. If ParamKind refers to a non-existent kind, this policy
///definition is mis-configured and the FailurePolicy is applied. If paramKind is specified
///but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be
///null.
///
///ParamKind is a tuple of Group Kind and Version.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1ParamKind {
    
    ///APIVersion is the API group version the resources belong to. In format of
    ///"group/version". Required.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Kind is the API kind the resources belong to. Required.
    @JsonKey(name: "kind")
    String? kind;

    IoK8SApiAdmissionregistrationV1ParamKind({
        this.apiVersion,
        this.kind,
    });

    factory IoK8SApiAdmissionregistrationV1ParamKind.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ParamKindFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ParamKindToJson(this);
}


///Validation specifies the CEL expression which is used to apply the validation.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Validation {
    
    ///Expression represents the expression which will be evaluated by CEL. ref:
    ///https://github.com/google/cel-spec CEL expressions have access to the contents of the API
    ///request/response, organized into CEL variables as well as some other useful variables:
    ///
    ///- 'object' - The object from the incoming request. The value is null for DELETE requests.
    ///- 'oldObject' - The existing object. The value is null for CREATE requests. - 'request' -
    ///Attributes of the API request([ref](/pkg/apis/admission/types.go#AdmissionRequest)). -
    ///'params' - Parameter resource referred to by the policy binding being evaluated. Only
    ///populated if the policy has a ParamKind. - 'namespaceObject' - The namespace object that
    ///the incoming object belongs to. The value is null for cluster-scoped resources. -
    ///'variables' - Map of composited variables, from its name to its lazily evaluated value.
    ///For example, a variable named 'foo' can be accessed as 'variables.foo'.
    ///- 'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the
    ///principal (user or service account) of the request.
    ///See https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz
    ///- 'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer'
    ///and configured with the
    ///request resource.
    ///
    ///The `apiVersion`, `kind`, `metadata.name` and `metadata.generateName` are always
    ///accessible from the root of the object. No other metadata properties are accessible.
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
    ///- Expression accessing a property named "namespace": {"Expression": "object.__namespace__
    ///> 0"}
    ///- Expression accessing a property named "x-prop": {"Expression": "object.x__dash__prop >
    ///0"}
    ///- Expression accessing a property named "redact__d": {"Expression":
    ///"object.redact__underscores__d > 0"}
    ///
    ///Equality on arrays with list type of 'set' or 'map' ignores element order, i.e. [1, 2] ==
    ///[2, 1]. Concatenation on arrays with x-kubernetes-list-type use the semantics of the list
    ///type:
    ///- 'set': `X + Y` performs a union where the array positions of all elements in `X` are
    ///preserved and
    ///non-intersecting elements in `Y` are appended, retaining their partial order.
    ///- 'map': `X + Y` performs a merge where the array positions of all keys in `X` are
    ///preserved but the values
    ///are overwritten by values in `Y` when the key sets of `X` and `Y` intersect. Elements in
    ///`Y` with
    ///non-intersecting keys are appended, retaining their partial order.
    ///Required.
    @JsonKey(name: "expression")
    String expression;
    
    ///Message represents the message displayed when validation fails. The message is required
    ///if the Expression contains line breaks. The message must not contain line breaks. If
    ///unset, the message is "failed rule: {Rule}". e.g. "must be a URL with the host matching
    ///spec.host" If the Expression contains line breaks. Message is required. The message must
    ///not contain line breaks. If unset, the message is "failed Expression: {Expression}".
    @JsonKey(name: "message")
    String? message;
    
    ///messageExpression declares a CEL expression that evaluates to the validation failure
    ///message that is returned when this rule fails. Since messageExpression is used as a
    ///failure message, it must evaluate to a string. If both message and messageExpression are
    ///present on a validation, then messageExpression will be used if validation fails. If
    ///messageExpression results in a runtime error, the runtime error is logged, and the
    ///validation failure message is produced as if the messageExpression field were unset. If
    ///messageExpression evaluates to an empty string, a string with only spaces, or a string
    ///that contains line breaks, then the validation failure message will also be produced as
    ///if the messageExpression field were unset, and the fact that messageExpression produced
    ///an empty string/string with only spaces/string with line breaks will be logged.
    ///messageExpression has access to all the same variables as the `expression` except for
    ///'authorizer' and 'authorizer.requestResource'. Example: "object.x must be less than max
    ///("+string(params.max)+")"
    @JsonKey(name: "messageExpression")
    String? messageExpression;
    
    ///Reason represents a machine-readable description of why this validation failed. If this
    ///is the first validation in the list to fail, this reason, as well as the corresponding
    ///HTTP response code, are used in the HTTP response to the client. The currently supported
    ///reasons are: "Unauthorized", "Forbidden", "Invalid", "RequestEntityTooLarge". If not set,
    ///StatusReasonInvalid is used in the response to the client.
    @JsonKey(name: "reason")
    String? reason;

    IoK8SApiAdmissionregistrationV1Validation({
        required this.expression,
        this.message,
        this.messageExpression,
        this.reason,
    });

    factory IoK8SApiAdmissionregistrationV1Validation.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ValidationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ValidationToJson(this);
}


///Variable is the definition of a variable that is used for composition. A variable is
///defined as a named expression.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Variable {
    
    ///Expression is the expression that will be evaluated as the value of the variable. The CEL
    ///expression has access to the same identifiers as the CEL expressions in Validation.
    @JsonKey(name: "expression")
    String expression;
    
    ///Name is the name of the variable. The name must be a valid CEL identifier and unique
    ///among all variables. The variable can be accessed in other expressions through
    ///`variables` For example, if name is "foo", the variable will be available as
    ///`variables.foo`
    @JsonKey(name: "name")
    String name;

    IoK8SApiAdmissionregistrationV1Variable({
        required this.expression,
        required this.name,
    });

    factory IoK8SApiAdmissionregistrationV1Variable.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1VariableFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1VariableToJson(this);
}
