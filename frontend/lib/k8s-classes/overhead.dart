import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'overhead.g.dart';


///Overhead structure represents the resource overhead associated with running a pod.
@JsonSerializable()
class Overhead {
    
    ///podFixed represents the fixed resource overhead associated with running a pod.
    @JsonKey(name: "podFixed")
    Map<String, dynamic>? podFixed;

    Overhead({
        this.podFixed,
    });

    factory Overhead.fromJson(Map<String, dynamic> json) => _$OverheadFromJson(json);

    Map<String, dynamic> toJson() => _$OverheadToJson(this);
}
