import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'endpointhints.g.dart';


///EndpointHints provides hints describing how an endpoint should be consumed.
@JsonSerializable()
class Endpointhints {
    
    ///forZones indicates the zone(s) this endpoint should be consumed by to enable topology
    ///aware routing.
    @JsonKey(name: "forZones")
    List<IoK8SApiDiscoveryV1ForZone>? forZones;

    Endpointhints({
        this.forZones,
    });

    factory Endpointhints.fromJson(Map<String, dynamic> json) => _$EndpointhintsFromJson(json);

    Map<String, dynamic> toJson() => _$EndpointhintsToJson(this);
}


///ForZone provides information about which zones should consume this endpoint.
@JsonSerializable()
class IoK8SApiDiscoveryV1ForZone {
    
    ///name represents the name of the zone.
    @JsonKey(name: "name")
    String name;

    IoK8SApiDiscoveryV1ForZone({
        required this.name,
    });

    factory IoK8SApiDiscoveryV1ForZone.fromJson(Map<String, dynamic> json) => _$IoK8SApiDiscoveryV1ForZoneFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiDiscoveryV1ForZoneToJson(this);
}
