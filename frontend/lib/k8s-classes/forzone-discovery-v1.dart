import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'forzone_discovery_v1.g.dart';


///ForZone provides information about which zones should consume this endpoint.
@JsonSerializable()
class ForzoneDiscoveryV1 {
    
    ///name represents the name of the zone.
    @JsonKey(name: "name")
    String? name;

    ForzoneDiscoveryV1({
        required this.name,
    });

    factory ForzoneDiscoveryV1.fromJson(Map<String, dynamic> json) => _$ForzoneDiscoveryV1FromJson(json);

    Map<String, dynamic> toJson() => _$ForzoneDiscoveryV1ToJson(this);
}
