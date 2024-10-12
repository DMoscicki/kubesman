import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'poddisruptionbudgetspec_policy_v1.g.dart';


///PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
@JsonSerializable()
class PoddisruptionbudgetspecPolicyV1 {
    
    ///An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are
    ///unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one
    ///can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting
    ///with "minAvailable".
    @JsonKey(name: "maxUnavailable")
    dynamic maxUnavailable;
    
    ///An eviction is allowed if at least "minAvailable" pods selected by "selector" will still
    ///be available after the eviction, i.e. even in the absence of the evicted pod.  So for
    ///example you can prevent all voluntary evictions by specifying "100%".
    @JsonKey(name: "minAvailable")
    dynamic minAvailable;
    
    ///Label query over pods whose evictions are managed by the disruption budget. A null
    ///selector will match no pods, while an empty ({}) selector will select all pods within the
    ///namespace.
    @JsonKey(name: "selector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? selector;
    
    ///UnhealthyPodEvictionPolicy defines the criteria for when unhealthy pods should be
    ///considered for eviction. Current implementation considers healthy pods, as pods that have
    ///status.conditions item with type="Ready",status="True".
    ///
    ///Valid policies are IfHealthyBudget and AlwaysAllow. If no policy is specified, the
    ///default behavior will be used, which corresponds to the IfHealthyBudget policy.
    ///
    ///IfHealthyBudget policy means that running pods (status.phase="Running"), but not yet
    ///healthy can be evicted only if the guarded application is not disrupted
    ///(status.currentHealthy is at least equal to status.desiredHealthy). Healthy pods will be
    ///subject to the PDB for eviction.
    ///
    ///AlwaysAllow policy means that all running pods (status.phase="Running"), but not yet
    ///healthy are considered disrupted and can be evicted regardless of whether the criteria in
    ///a PDB is met. This means perspective running pods of a disrupted application might not
    ///get a chance to become healthy. Healthy pods will be subject to the PDB for eviction.
    ///
    ///Additional policies may be added in the future. Clients making eviction decisions should
    ///disallow eviction of unhealthy pods if they encounter an unrecognized policy in this
    ///field.
    ///
    ///This field is beta-level. The eviction API uses this field when the feature gate
    ///PDBUnhealthyPodEvictionPolicy is enabled (enabled by default).
    @JsonKey(name: "unhealthyPodEvictionPolicy")
    String? unhealthyPodEvictionPolicy;

    PoddisruptionbudgetspecPolicyV1({
        this.maxUnavailable,
        this.minAvailable,
        this.selector,
        this.unhealthyPodEvictionPolicy,
    });

    factory PoddisruptionbudgetspecPolicyV1.fromJson(Map<String, dynamic> json) => _$PoddisruptionbudgetspecPolicyV1FromJson(json);

    Map<String, dynamic> toJson() => _$PoddisruptionbudgetspecPolicyV1ToJson(this);
}


///Label query over pods whose evictions are managed by the disruption budget. A null
///selector will match no pods, while an empty ({}) selector will select all pods within the
///namespace.
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
