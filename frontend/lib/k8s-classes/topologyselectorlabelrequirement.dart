import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'topologyselectorlabelrequirement.g.dart';


///A topology selector requirement is a selector that matches given label. This is an alpha
///feature and may change in the future.
@JsonSerializable()
class Topologyselectorlabelrequirement {
    
    ///The label key that the selector applies to.
    @JsonKey(name: "key")
    String? key;
    
    ///An array of string values. One value must match the label to be selected. Each entry in
    ///Values is ORed.
    @JsonKey(name: "values")
    List<String?>? values;

    Topologyselectorlabelrequirement({
        required this.key,
        required this.values,
    });

    factory Topologyselectorlabelrequirement.fromJson(Map<String, dynamic> json) => _$TopologyselectorlabelrequirementFromJson(json);

    Map<String, dynamic> toJson() => _$TopologyselectorlabelrequirementToJson(this);
}
