import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'networkpolicypeer.g.dart';


///NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of
///fields are allowed
@JsonSerializable()
class Networkpolicypeer {
    
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

    Networkpolicypeer({
        this.ipBlock,
        this.namespaceSelector,
        this.podSelector,
    });

    factory Networkpolicypeer.fromJson(Map<String, dynamic> json) => _$NetworkpolicypeerFromJson(json);

    Map<String, dynamic> toJson() => _$NetworkpolicypeerToJson(this);
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
