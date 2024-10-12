import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'forzone.g.dart';


///ForZone provides information about which zones should consume this endpoint.
@JsonSerializable()
class Forzone {
    
    ///name represents the name of the zone.
    @JsonKey(name: "name")
    String? name;

    Forzone({
        required this.name,
    });

    factory Forzone.fromJson(Map<String, dynamic> json) => _$ForzoneFromJson(json);

    Map<String, dynamic> toJson() => _$ForzoneToJson(this);
}
