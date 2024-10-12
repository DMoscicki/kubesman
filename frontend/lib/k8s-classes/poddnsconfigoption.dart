import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'poddnsconfigoption.g.dart';


///PodDNSConfigOption defines DNS resolver options of a pod.
@JsonSerializable()
class Poddnsconfigoption {
    
    ///Required.
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "value")
    String? value;

    Poddnsconfigoption({
        this.name,
        this.value,
    });

    factory Poddnsconfigoption.fromJson(Map<String, dynamic> json) => _$PoddnsconfigoptionFromJson(json);

    Map<String, dynamic> toJson() => _$PoddnsconfigoptionToJson(this);
}
