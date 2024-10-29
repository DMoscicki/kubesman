import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'paramref_admissionregistration_v1_alpha1.g.dart';


///ParamRef describes how to locate the params to be used as input to expressions of rules
///applied by a policy binding.
@JsonSerializable()
class ParamrefAdmissionregistrationV1Alpha1 {
    
    ///`name` is the name of the resource being referenced.
    ///
    ///`name` and `selector` are mutually exclusive properties. If one is set, the other must be
    ///unset.
    @JsonKey(name: "name")
    String? name;
    
    ///namespace is the namespace of the referenced resource. Allows limiting the search for
    ///params to a specific namespace. Applies to both `name` and `selector` fields.
    ///
    ///A per-namespace parameter may be used by specifying a namespace-scoped `paramKind` in the
    ///policy and leaving this field empty.
    ///
    ///- If `paramKind` is cluster-scoped, this field MUST be unset. Setting this field results
    ///in a configuration error.
    ///
    ///- If `paramKind` is namespace-scoped, the namespace of the object being evaluated for
    ///admission will be used when this field is left unset. Take care that if this is left
    ///empty the binding must not match any cluster-scoped resources, which will result in an
    ///error.
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///`parameterNotFoundAction` controls the behavior of the binding when the resource exists,
    ///and name or selector is valid, but there are no parameters matched by the binding. If the
    ///value is set to `Allow`, then no matched parameters will be treated as successful
    ///validation by the binding. If set to `Deny`, then no matched parameters will be subject
    ///to the `failurePolicy` of the policy.
    ///
    ///Allowed values are `Allow` or `Deny` Default to `Deny`
    @JsonKey(name: "parameterNotFoundAction")
    String? parameterNotFoundAction;
    
    ///selector can be used to match multiple param objects based on their labels. Supply
    ///selector: {} to match all resources of the ParamKind.
    ///
    ///If multiple params are found, they are all evaluated with the policy expressions and the
    ///results are ANDed together.
    ///
    ///One of `name` or `selector` must be set, but `name` and `selector` are mutually exclusive
    ///properties. If one is set, the other must be unset.
    @JsonKey(name: "selector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? selector;

    ParamrefAdmissionregistrationV1Alpha1({
        this.name,
        this.namespace,
        this.parameterNotFoundAction,
        this.selector,
    });

    factory ParamrefAdmissionregistrationV1Alpha1.fromJson(Map<String, dynamic> json) => _$ParamrefAdmissionregistrationV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$ParamrefAdmissionregistrationV1Alpha1ToJson(this);
}


///selector can be used to match multiple param objects based on their labels. Supply
///selector: {} to match all resources of the ParamKind.
///
///If multiple params are found, they are all evaluated with the policy expressions and the
///results are ANDed together.
///
///One of `name` or `selector` must be set, but `name` and `selector` are mutually exclusive
///properties. If one is set, the other must be unset.
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
