import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcequotaspec_v1.g.dart';


///ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
@JsonSerializable()
class ResourcequotaspecV1 {
    
    ///hard is the set of desired hard limits for each named resource. More info:
    ///https://kubernetes.io/docs/concepts/policy/resource-quotas/
    @JsonKey(name: "hard")
    Map<String, dynamic>? hard;
    
    ///A collection of filters that must match each object tracked by a quota. If not specified,
    ///the quota matches all objects.
    @JsonKey(name: "scopes")
    List<String?>? scopes;
    
    ///scopeSelector is also a collection of filters like scopes that must match each object
    ///tracked by a quota but expressed using ScopeSelectorOperator in combination with possible
    ///values. For a resource to match, both scopes AND scopeSelector (if specified in spec),
    ///must be matched.
    @JsonKey(name: "scopeSelector")
    IoK8SApiCoreV1ScopeSelector? scopeSelector;

    ResourcequotaspecV1({
        this.hard,
        this.scopes,
        this.scopeSelector,
    });

    factory ResourcequotaspecV1.fromJson(Map<String, dynamic> json) => _$ResourcequotaspecV1FromJson(json);

    Map<String, dynamic> toJson() => _$ResourcequotaspecV1ToJson(this);
}


///scopeSelector is also a collection of filters like scopes that must match each object
///tracked by a quota but expressed using ScopeSelectorOperator in combination with possible
///values. For a resource to match, both scopes AND scopeSelector (if specified in spec),
///must be matched.
///
///A scope selector represents the AND of the selectors represented by the scoped-resource
///selector requirements.
@JsonSerializable()
class IoK8SApiCoreV1ScopeSelector {
    
    ///A list of scope selector requirements by scope of the resources.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApiCoreV1ScopedResourceSelectorRequirement>? matchExpressions;

    IoK8SApiCoreV1ScopeSelector({
        this.matchExpressions,
    });

    factory IoK8SApiCoreV1ScopeSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ScopeSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ScopeSelectorToJson(this);
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
