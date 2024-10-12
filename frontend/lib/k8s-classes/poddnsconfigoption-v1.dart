import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'poddnsconfigoption_v1.g.dart';


///PodDNSConfigOption defines DNS resolver options of a pod.
@JsonSerializable()
class PoddnsconfigoptionV1 {
    
    ///Required.
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "value")
    String? value;

    PoddnsconfigoptionV1({
        this.name,
        this.value,
    });

    factory PoddnsconfigoptionV1.fromJson(Map<String, dynamic> json) => _$PoddnsconfigoptionV1FromJson(json);

    Map<String, dynamic> toJson() => _$PoddnsconfigoptionV1ToJson(this);
}
