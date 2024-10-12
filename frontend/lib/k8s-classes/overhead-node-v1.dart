import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'overhead_node_v1.g.dart';


///Overhead structure represents the resource overhead associated with running a pod.
@JsonSerializable()
class OverheadNodeV1 {
    
    ///podFixed represents the fixed resource overhead associated with running a pod.
    @JsonKey(name: "podFixed")
    Map<String, dynamic>? podFixed;

    OverheadNodeV1({
        this.podFixed,
    });

    factory OverheadNodeV1.fromJson(Map<String, dynamic> json) => _$OverheadNodeV1FromJson(json);

    Map<String, dynamic> toJson() => _$OverheadNodeV1ToJson(this);
}
