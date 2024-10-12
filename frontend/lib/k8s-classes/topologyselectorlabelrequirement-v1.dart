import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'topologyselectorlabelrequirement_v1.g.dart';


///A topology selector requirement is a selector that matches given label. This is an alpha
///feature and may change in the future.
@JsonSerializable()
class TopologyselectorlabelrequirementV1 {
    
    ///The label key that the selector applies to.
    @JsonKey(name: "key")
    String? key;
    
    ///An array of string values. One value must match the label to be selected. Each entry in
    ///Values is ORed.
    @JsonKey(name: "values")
    List<String?>? values;

    TopologyselectorlabelrequirementV1({
        required this.key,
        required this.values,
    });

    factory TopologyselectorlabelrequirementV1.fromJson(Map<String, dynamic> json) => _$TopologyselectorlabelrequirementV1FromJson(json);

    Map<String, dynamic> toJson() => _$TopologyselectorlabelrequirementV1ToJson(this);
}
