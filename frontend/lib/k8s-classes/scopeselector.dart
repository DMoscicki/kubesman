import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'scopeselector.g.dart';


///A scope selector represents the AND of the selectors represented by the scoped-resource
///selector requirements.
@JsonSerializable()
class Scopeselector {
    
    ///A list of scope selector requirements by scope of the resources.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApiCoreV1ScopedResourceSelectorRequirement>? matchExpressions;

    Scopeselector({
        this.matchExpressions,
    });

    factory Scopeselector.fromJson(Map<String, dynamic> json) => _$ScopeselectorFromJson(json);

    Map<String, dynamic> toJson() => _$ScopeselectorToJson(this);
}


///A scoped-resource selector requirement is a selector that contains values, a scope name,
///and an operator that relates the scope name and values.
@JsonSerializable()
class IoK8SApiCoreV1ScopedResourceSelectorRequirement {
    
    ///Represents a scope's relationship to a set of values. Valid operators are In, NotIn,
    ///Exists, DoesNotExist.
    @JsonKey(name: "operator")
    String ioK8SApiCoreV1ScopedResourceSelectorRequirementOperator;
    
    ///The name of the scope that the selector applies to.
    @JsonKey(name: "scopeName")
    String scopeName;
    
    ///An array of string values. If the operator is In or NotIn, the values array must be
    ///non-empty. If the operator is Exists or DoesNotExist, the values array must be empty.
    ///This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String>? values;

    IoK8SApiCoreV1ScopedResourceSelectorRequirement({
        required this.ioK8SApiCoreV1ScopedResourceSelectorRequirementOperator,
        required this.scopeName,
        this.values,
    });

    factory IoK8SApiCoreV1ScopedResourceSelectorRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ScopedResourceSelectorRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ScopedResourceSelectorRequirementToJson(this);
}
