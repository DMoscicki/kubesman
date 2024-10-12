import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'clustertrustbundleprojection.g.dart';


///ClusterTrustBundleProjection describes how to select a set of ClusterTrustBundle objects
///and project their contents into the pod filesystem.
@JsonSerializable()
class Clustertrustbundleprojection {
    
    ///Select all ClusterTrustBundles that match this label selector.  Only has effect if
    ///signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match
    ///nothing".  If set but empty, interpreted as "match everything".
    @JsonKey(name: "labelSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? labelSelector;
    
    ///Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName
    ///and labelSelector.
    @JsonKey(name: "name")
    String? name;
    
    ///If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't
    ///available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If
    ///using signerName, then the combination of signerName and labelSelector is allowed to
    ///match zero ClusterTrustBundles.
    @JsonKey(name: "optional")
    bool? optional;
    
    ///Relative path from the volume root to write the bundle.
    @JsonKey(name: "path")
    String? path;
    
    ///Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with
    ///name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated.
    @JsonKey(name: "signerName")
    String? signerName;

    Clustertrustbundleprojection({
        this.labelSelector,
        this.name,
        this.optional,
        required this.path,
        this.signerName,
    });

    factory Clustertrustbundleprojection.fromJson(Map<String, dynamic> json) => _$ClustertrustbundleprojectionFromJson(json);

    Map<String, dynamic> toJson() => _$ClustertrustbundleprojectionToJson(this);
}


///Select all ClusterTrustBundles that match this label selector.  Only has effect if
///signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match
///nothing".  If set but empty, interpreted as "match everything".
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
