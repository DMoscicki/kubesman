import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'validatingwebhook.g.dart';


///ValidatingWebhook describes an admission webhook and the resources and operations it
///applies to.
@JsonSerializable()
class Validatingwebhook {
    
    ///AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the
    ///Webhook expects. API server will try to use first version in the list which it supports.
    ///If none of the versions specified in this list supported by API server, validation will
    ///fail for this object. If a persisted webhook configuration specifies allowed versions and
    ///does not include any versions known to the API Server, calls to the webhook will fail and
    ///be subject to the failure policy.
    @JsonKey(name: "admissionReviewVersions")
    List<String?>? admissionReviewVersions;
    
    ///ClientConfig defines how to communicate with the hook. Required
    @JsonKey(name: "clientConfig")
    IoK8SApiAdmissionregistrationV1WebhookClientConfig clientConfig;
    
    ///FailurePolicy defines how unrecognized errors from the admission endpoint are handled -
    ///allowed values are Ignore or Fail. Defaults to Fail.
    @JsonKey(name: "failurePolicy")
    String? failurePolicy;
    
    ///MatchConditions is a list of conditions that must be met for a request to be sent to this
    ///webhook. Match conditions filter requests that have already been matched by the rules,
    ///namespaceSelector, and objectSelector. An empty list of matchConditions matches all
    ///requests. There are a maximum of 64 match conditions allowed.
    ///
    ///The exact matching logic is (in order):
    ///1. If ANY matchCondition evaluates to FALSE, the webhook is skipped.
    ///2. If ALL matchConditions evaluate to TRUE, the webhook is called.
    ///3. If any matchCondition evaluates to an error (but none are FALSE):
    ///- If failurePolicy=Fail, reject the request
    ///- If failurePolicy=Ignore, the error is ignored and the webhook is skipped
    @JsonKey(name: "matchConditions")
    List<IoK8SApiAdmissionregistrationV1MatchCondition>? matchConditions;
    
    ///matchPolicy defines how the "rules" list is used to match incoming requests. Allowed
    ///values are "Exact" or "Equivalent".
    ///
    ///- Exact: match a request only if it exactly matches a specified rule. For example, if
    ///deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but
    ///"rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources:
    ///["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to
    ///the webhook.
    ///
    ///- Equivalent: match a request if modifies a resource listed in rules, even via another
    ///API group or version. For example, if deployments can be modified via apps/v1,
    ///apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"],
    ///apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or
    ///extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.
    ///
    ///Defaults to "Equivalent"
    @JsonKey(name: "matchPolicy")
    String? matchPolicy;
    
    ///The name of the admission webhook. Name should be fully qualified, e.g.,
    ///imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and
    ///kubernetes.io is the name of the organization. Required.
    @JsonKey(name: "name")
    String? name;
    
    ///NamespaceSelector decides whether to run the webhook on an object based on whether the
    ///namespace for that object matches the selector. If the object itself is a namespace, the
    ///matching is performed on object.metadata.labels. If the object is another cluster scoped
    ///resource, it never skips the webhook.
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
    ///If instead you want to only run the webhook on any objects whose namespace is associated
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
    ///See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more
    ///examples of label selectors.
    ///
    ///Default to the empty LabelSelector, which matches everything.
    @JsonKey(name: "namespaceSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? namespaceSelector;
    
    ///ObjectSelector decides whether to run the webhook based on if the object has matching
    ///labels. objectSelector is evaluated against both the oldObject and newObject that would
    ///be sent to the webhook, and is considered to match if either object matches the selector.
    ///A null object (oldObject in the case of create, or newObject in the case of delete) or an
    ///object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is
    ///not considered to match. Use the object selector only if the webhook is opt-in, because
    ///end users may skip the admission webhook by setting the labels. Default to the empty
    ///LabelSelector, which matches everything.
    @JsonKey(name: "objectSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? objectSelector;
    
    ///Rules describes what operations on what resources/subresources the webhook cares about.
    ///The webhook cares about an operation if it matches _any_ Rule. However, in order to
    ///prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the
    ///cluster in a state which cannot be recovered from without completely disabling the
    ///plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on
    ///admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration
    ///objects.
    @JsonKey(name: "rules")
    List<IoK8SApiAdmissionregistrationV1RuleWithOperations>? rules;
    
    ///SideEffects states whether this webhook has side effects. Acceptable values are: None,
    ///NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks
    ///with side effects MUST implement a reconciliation system, since a request may be rejected
    ///by a future step in the admission chain and the side effects therefore need to be undone.
    ///Requests with the dryRun attribute will be auto-rejected if they match a webhook with
    ///sideEffects == Unknown or Some.
    @JsonKey(name: "sideEffects")
    String? sideEffects;
    
    ///TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the
    ///webhook call will be ignored or the API call will fail based on the failure policy. The
    ///timeout value must be between 1 and 30 seconds. Default to 10 seconds.
    @JsonKey(name: "timeoutSeconds")
    int? timeoutSeconds;

    Validatingwebhook({
        required this.admissionReviewVersions,
        required this.clientConfig,
        this.failurePolicy,
        this.matchConditions,
        this.matchPolicy,
        required this.name,
        this.namespaceSelector,
        this.objectSelector,
        this.rules,
        required this.sideEffects,
        this.timeoutSeconds,
    });

    factory Validatingwebhook.fromJson(Map<String, dynamic> json) => _$ValidatingwebhookFromJson(json);

    Map<String, dynamic> toJson() => _$ValidatingwebhookToJson(this);
}


///ClientConfig defines how to communicate with the hook. Required
///
///WebhookClientConfig contains the information to make a TLS connection with the webhook
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1WebhookClientConfig {
    
    ///`caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server
    ///certificate. If unspecified, system trust roots on the apiserver are used.
    @JsonKey(name: "caBundle")
    String? caBundle;
    
    ///`service` is a reference to the service for this webhook. Either `service` or `url` must
    ///be specified.
    ///
    ///If the webhook is running within the cluster, then you should use `service`.
    @JsonKey(name: "service")
    IoK8SApiAdmissionregistrationV1ServiceReference? service;
    
    ///`url` gives the location of the webhook, in standard URL form
    ///(`scheme://host:port/path`). Exactly one of `url` or `service` must be specified.
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

    IoK8SApiAdmissionregistrationV1WebhookClientConfig({
        this.caBundle,
        this.service,
        this.url,
    });

    factory IoK8SApiAdmissionregistrationV1WebhookClientConfig.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1WebhookClientConfigFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1WebhookClientConfigToJson(this);
}


///`service` is a reference to the service for this webhook. Either `service` or `url` must
///be specified.
///
///If the webhook is running within the cluster, then you should use `service`.
///
///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1ServiceReference {
    
    ///`name` is the name of the service. Required
    @JsonKey(name: "name")
    String name;
    
    ///`namespace` is the namespace of the service. Required
    @JsonKey(name: "namespace")
    String namespace;
    
    ///`path` is an optional URL path which will be sent in any request to this service.
    @JsonKey(name: "path")
    String? path;
    
    ///If specified, the port on the service that hosting webhook. Default to 443 for backward
    ///compatibility. `port` should be a valid port number (1-65535, inclusive).
    @JsonKey(name: "port")
    int? port;

    IoK8SApiAdmissionregistrationV1ServiceReference({
        required this.name,
        required this.namespace,
        this.path,
        this.port,
    });

    factory IoK8SApiAdmissionregistrationV1ServiceReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ServiceReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ServiceReferenceToJson(this);
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


///NamespaceSelector decides whether to run the webhook on an object based on whether the
///namespace for that object matches the selector. If the object itself is a namespace, the
///matching is performed on object.metadata.labels. If the object is another cluster scoped
///resource, it never skips the webhook.
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
///If instead you want to only run the webhook on any objects whose namespace is associated
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
///See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more
///examples of label selectors.
///
///Default to the empty LabelSelector, which matches everything.
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
///
///ObjectSelector decides whether to run the webhook based on if the object has matching
///labels. objectSelector is evaluated against both the oldObject and newObject that would
///be sent to the webhook, and is considered to match if either object matches the selector.
///A null object (oldObject in the case of create, or newObject in the case of delete) or an
///object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is
///not considered to match. Use the object selector only if the webhook is opt-in, because
///end users may skip the admission webhook by setting the labels. Default to the empty
///LabelSelector, which matches everything.
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


///RuleWithOperations is a tuple of Operations and Resources. It is recommended to make sure
///that all the tuple expansions are valid.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1RuleWithOperations {
    
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

    IoK8SApiAdmissionregistrationV1RuleWithOperations({
        this.apiGroups,
        this.apiVersions,
        this.operations,
        this.resources,
        this.scope,
    });

    factory IoK8SApiAdmissionregistrationV1RuleWithOperations.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1RuleWithOperationsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1RuleWithOperationsToJson(this);
}
