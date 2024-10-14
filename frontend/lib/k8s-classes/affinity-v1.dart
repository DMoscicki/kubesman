import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'affinity_v1.g.dart';


///Affinity is a group of affinity scheduling rules.
@JsonSerializable()
class AffinityV1 {
    
    ///Describes node affinity scheduling rules for the pod.
    @JsonKey(name: "nodeAffinity")
    IoK8SApiCoreV1NodeAffinity? nodeAffinity;
    
    ///Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone,
    ///etc. as some other pod(s)).
    @JsonKey(name: "podAffinity")
    IoK8SApiCoreV1PodAffinity? podAffinity;
    
    ///Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same
    ///node, zone, etc. as some other pod(s)).
    @JsonKey(name: "podAntiAffinity")
    IoK8SApiCoreV1PodAntiAffinity? podAntiAffinity;

    AffinityV1({
        this.nodeAffinity,
        this.podAffinity,
        this.podAntiAffinity,
    });

    factory AffinityV1.fromJson(Map<String, dynamic> json) => _$AffinityV1FromJson(json);

    Map<String, dynamic> toJson() => _$AffinityV1ToJson(this);
}


///Describes node affinity scheduling rules for the pod.
///
///Node affinity is a group of node affinity scheduling rules.
@JsonSerializable()
class IoK8SApiCoreV1NodeAffinity {
    
    ///The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions
    ///specified by this field, but it may choose a node that violates one or more of the
    ///expressions. The node that is most preferred is the one with the greatest sum of weights,
    ///i.e. for each node that meets all of the scheduling requirements (resource request,
    ///requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through
    ///the elements of this field and adding "weight" to the sum if the node matches the
    ///corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
    @JsonKey(name: "preferredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1PreferredSchedulingTerm>? preferredDuringSchedulingIgnoredDuringExecution;
    
    ///If the affinity requirements specified by this field are not met at scheduling time, the
    ///pod will not be scheduled onto the node. If the affinity requirements specified by this
    ///field cease to be met at some point during pod execution (e.g. due to an update), the
    ///system may or may not try to eventually evict the pod from its node.
    @JsonKey(name: "requiredDuringSchedulingIgnoredDuringExecution")
    IoK8SApiCoreV1NodeSelector? requiredDuringSchedulingIgnoredDuringExecution;

    IoK8SApiCoreV1NodeAffinity({
        this.preferredDuringSchedulingIgnoredDuringExecution,
        this.requiredDuringSchedulingIgnoredDuringExecution,
    });

    factory IoK8SApiCoreV1NodeAffinity.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeAffinityFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeAffinityToJson(this);
}


///An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's
///a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
@JsonSerializable()
class IoK8SApiCoreV1PreferredSchedulingTerm {
    
    ///A node selector term, associated with the corresponding weight.
    @JsonKey(name: "preference")
    IoK8SApiCoreV1NodeSelectorTerm preference;
    
    ///Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
    @JsonKey(name: "weight")
    int weight;

    IoK8SApiCoreV1PreferredSchedulingTerm({
        required this.preference,
        required this.weight,
    });

    factory IoK8SApiCoreV1PreferredSchedulingTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PreferredSchedulingTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PreferredSchedulingTermToJson(this);
}


///A node selector term, associated with the corresponding weight.
///
///A null or empty node selector term matches no objects. The requirements of them are
///ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelectorTerm {
    
    ///A list of node selector requirements by node's labels.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApiCoreV1NodeSelectorRequirement>? matchExpressions;
    
    ///A list of node selector requirements by node's fields.
    @JsonKey(name: "matchFields")
    List<IoK8SApiCoreV1NodeSelectorRequirement>? matchFields;

    IoK8SApiCoreV1NodeSelectorTerm({
        this.matchExpressions,
        this.matchFields,
    });

    factory IoK8SApiCoreV1NodeSelectorTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorTermToJson(this);
}


///A node selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelectorRequirement {
    
    ///The label key that the selector applies to.
    @JsonKey(name: "key")
    String key;
    
    ///Represents a key's relationship to a set of values. Valid operators are In, NotIn,
    ///Exists, DoesNotExist. Gt, and Lt.
    @JsonKey(name: "operator")
    String ioK8SApiCoreV1NodeSelectorRequirementOperator;
    
    ///An array of string values. If the operator is In or NotIn, the values array must be
    ///non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If
    ///the operator is Gt or Lt, the values array must have a single element, which will be
    ///interpreted as an integer. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String>? values;

    IoK8SApiCoreV1NodeSelectorRequirement({
        required this.key,
        required this.ioK8SApiCoreV1NodeSelectorRequirementOperator,
        this.values,
    });

    factory IoK8SApiCoreV1NodeSelectorRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorRequirementToJson(this);
}


///If the affinity requirements specified by this field are not met at scheduling time, the
///pod will not be scheduled onto the node. If the affinity requirements specified by this
///field cease to be met at some point during pod execution (e.g. due to an update), the
///system may or may not try to eventually evict the pod from its node.
///
///A node selector represents the union of the results of one or more label queries over a
///set of nodes; that is, it represents the OR of the selectors represented by the node
///selector terms.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelector {
    
    ///Required. A list of node selector terms. The terms are ORed.
    @JsonKey(name: "nodeSelectorTerms")
    List<IoK8SApiCoreV1NodeSelectorTerm> nodeSelectorTerms;

    IoK8SApiCoreV1NodeSelector({
        required this.nodeSelectorTerms,
    });

    factory IoK8SApiCoreV1NodeSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorToJson(this);
}


///Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone,
///etc. as some other pod(s)).
///
///Pod affinity is a group of inter pod affinity scheduling rules.
@JsonSerializable()
class IoK8SApiCoreV1PodAffinity {
    
    ///The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions
    ///specified by this field, but it may choose a node that violates one or more of the
    ///expressions. The node that is most preferred is the one with the greatest sum of weights,
    ///i.e. for each node that meets all of the scheduling requirements (resource request,
    ///requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through
    ///the elements of this field and adding "weight" to the sum if the node has pods which
    ///matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most
    ///preferred.
    @JsonKey(name: "preferredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1WeightedPodAffinityTerm>? preferredDuringSchedulingIgnoredDuringExecution;
    
    ///If the affinity requirements specified by this field are not met at scheduling time, the
    ///pod will not be scheduled onto the node. If the affinity requirements specified by this
    ///field cease to be met at some point during pod execution (e.g. due to a pod label
    ///update), the system may or may not try to eventually evict the pod from its node. When
    ///there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are
    ///intersected, i.e. all terms must be satisfied.
    @JsonKey(name: "requiredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1PodAffinityTerm>? requiredDuringSchedulingIgnoredDuringExecution;

    IoK8SApiCoreV1PodAffinity({
        this.preferredDuringSchedulingIgnoredDuringExecution,
        this.requiredDuringSchedulingIgnoredDuringExecution,
    });

    factory IoK8SApiCoreV1PodAffinity.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodAffinityFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodAffinityToJson(this);
}


///The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to
///find the most preferred node(s)
@JsonSerializable()
class IoK8SApiCoreV1WeightedPodAffinityTerm {
    
    ///Required. A pod affinity term, associated with the corresponding weight.
    @JsonKey(name: "podAffinityTerm")
    IoK8SApiCoreV1PodAffinityTerm podAffinityTerm;
    
    ///weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
    @JsonKey(name: "weight")
    int weight;

    IoK8SApiCoreV1WeightedPodAffinityTerm({
        required this.podAffinityTerm,
        required this.weight,
    });

    factory IoK8SApiCoreV1WeightedPodAffinityTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1WeightedPodAffinityTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1WeightedPodAffinityTermToJson(this);
}


///Required. A pod affinity term, associated with the corresponding weight.
///
///Defines a set of pods (namely those matching the labelSelector relative to the given
///namespace(s)) that this pod should be co-located (affinity) or not co-located
///(anti-affinity) with, where co-located is defined as running on a node whose value of the
///label with key <topologyKey> matches that of any node on which a pod of the set of pods
///is running
@JsonSerializable()
class IoK8SApiCoreV1PodAffinityTerm {
    
    ///A label query over a set of resources, in this case pods. If it's null, this
    ///PodAffinityTerm matches with no Pods.
    @JsonKey(name: "labelSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? labelSelector;
    
    ///MatchLabelKeys is a set of pod label keys to select which pods will be taken into
    ///consideration. The keys are used to lookup values from the incoming pod labels, those
    ///key-value labels are merged with `labelSelector` as `key in (value)` to select the group
    ///of existing pods which pods will be taken into consideration for the incoming pod's pod
    ///(anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The
    ///default value is empty. The same key is forbidden to exist in both matchLabelKeys and
    ///labelSelector. Also, matchLabelKeys cannot be set when labelSelector isn't set. This is
    ///an alpha field and requires enabling MatchLabelKeysInPodAffinity feature gate.
    @JsonKey(name: "matchLabelKeys")
    List<String>? matchLabelKeys;
    
    ///MismatchLabelKeys is a set of pod label keys to select which pods will be taken into
    ///consideration. The keys are used to lookup values from the incoming pod labels, those
    ///key-value labels are merged with `labelSelector` as `key notin (value)` to select the
    ///group of existing pods which pods will be taken into consideration for the incoming pod's
    ///pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored.
    ///The default value is empty. The same key is forbidden to exist in both mismatchLabelKeys
    ///and labelSelector. Also, mismatchLabelKeys cannot be set when labelSelector isn't set.
    ///This is an alpha field and requires enabling MatchLabelKeysInPodAffinity feature gate.
    @JsonKey(name: "mismatchLabelKeys")
    List<String>? mismatchLabelKeys;
    
    ///namespaces specifies a static list of namespace names that the term applies to. The term
    ///is applied to the union of the namespaces listed in this field and the ones selected by
    ///namespaceSelector. null or empty namespaces list and null namespaceSelector means "this
    ///pod's namespace".
    @JsonKey(name: "namespaces")
    List<String>? namespaces;
    
    ///A label query over the set of namespaces that the term applies to. The term is applied to
    ///the union of the namespaces selected by this field and the ones listed in the namespaces
    ///field. null selector and null or empty namespaces list means "this pod's namespace". An
    ///empty selector ({}) matches all namespaces.
    @JsonKey(name: "namespaceSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? namespaceSelector;
    
    ///This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods
    ///matching the labelSelector in the specified namespaces, where co-located is defined as
    ///running on a node whose value of the label with key topologyKey matches that of any node
    ///on which any of the selected pods is running. Empty topologyKey is not allowed.
    @JsonKey(name: "topologyKey")
    String topologyKey;

    IoK8SApiCoreV1PodAffinityTerm({
        this.labelSelector,
        this.matchLabelKeys,
        this.mismatchLabelKeys,
        this.namespaces,
        this.namespaceSelector,
        required this.topologyKey,
    });

    factory IoK8SApiCoreV1PodAffinityTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodAffinityTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodAffinityTermToJson(this);
}


///A label query over a set of resources, in this case pods. If it's null, this
///PodAffinityTerm matches with no Pods.
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
///
///A label query over the set of namespaces that the term applies to. The term is applied to
///the union of the namespaces selected by this field and the ones listed in the namespaces
///field. null selector and null or empty namespaces list means "this pod's namespace". An
///empty selector ({}) matches all namespaces.
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


///Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same
///node, zone, etc. as some other pod(s)).
///
///Pod anti affinity is a group of inter pod anti affinity scheduling rules.
@JsonSerializable()
class IoK8SApiCoreV1PodAntiAffinity {
    
    ///The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity
    ///expressions specified by this field, but it may choose a node that violates one or more
    ///of the expressions. The node that is most preferred is the one with the greatest sum of
    ///weights, i.e. for each node that meets all of the scheduling requirements (resource
    ///request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by
    ///iterating through the elements of this field and adding "weight" to the sum if the node
    ///has pods which matches the corresponding podAffinityTerm; the node(s) with the highest
    ///sum are the most preferred.
    @JsonKey(name: "preferredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1WeightedPodAffinityTerm>? preferredDuringSchedulingIgnoredDuringExecution;
    
    ///If the anti-affinity requirements specified by this field are not met at scheduling time,
    ///the pod will not be scheduled onto the node. If the anti-affinity requirements specified
    ///by this field cease to be met at some point during pod execution (e.g. due to a pod label
    ///update), the system may or may not try to eventually evict the pod from its node. When
    ///there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are
    ///intersected, i.e. all terms must be satisfied.
    @JsonKey(name: "requiredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1PodAffinityTerm>? requiredDuringSchedulingIgnoredDuringExecution;

    IoK8SApiCoreV1PodAntiAffinity({
        this.preferredDuringSchedulingIgnoredDuringExecution,
        this.requiredDuringSchedulingIgnoredDuringExecution,
    });

    factory IoK8SApiCoreV1PodAntiAffinity.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodAntiAffinityFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodAntiAffinityToJson(this);
}
