import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodeaffinity.g.dart';


///Node affinity is a group of node affinity scheduling rules.
@JsonSerializable()
class Nodeaffinity {
    
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

    Nodeaffinity({
        this.preferredDuringSchedulingIgnoredDuringExecution,
        this.requiredDuringSchedulingIgnoredDuringExecution,
    });

    factory Nodeaffinity.fromJson(Map<String, dynamic> json) => _$NodeaffinityFromJson(json);

    Map<String, dynamic> toJson() => _$NodeaffinityToJson(this);
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
