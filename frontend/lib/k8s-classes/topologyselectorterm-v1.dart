import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'topologyselectorterm_v1.g.dart';


///A topology selector term represents the result of label queries. A null or empty topology
///selector term matches no objects. The requirements of them are ANDed. It provides a
///subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in
///the future.
@JsonSerializable()
class TopologyselectortermV1 {
    
    ///A list of topology selector requirements by labels.
    @JsonKey(name: "matchLabelExpressions")
    List<IoK8SApiCoreV1TopologySelectorLabelRequirement>? matchLabelExpressions;

    TopologyselectortermV1({
        this.matchLabelExpressions,
    });

    factory TopologyselectortermV1.fromJson(Map<String, dynamic> json) => _$TopologyselectortermV1FromJson(json);

    Map<String, dynamic> toJson() => _$TopologyselectortermV1ToJson(this);
}


///A topology selector requirement is a selector that matches given label. This is an alpha
///feature and may change in the future.
@JsonSerializable()
class IoK8SApiCoreV1TopologySelectorLabelRequirement {
    
    ///The label key that the selector applies to.
    @JsonKey(name: "key")
    String key;
    
    ///An array of string values. One value must match the label to be selected. Each entry in
    ///Values is ORed.
    @JsonKey(name: "values")
    List<String> values;

    IoK8SApiCoreV1TopologySelectorLabelRequirement({
        required this.key,
        required this.values,
    });

    factory IoK8SApiCoreV1TopologySelectorLabelRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TopologySelectorLabelRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TopologySelectorLabelRequirementToJson(this);
}
