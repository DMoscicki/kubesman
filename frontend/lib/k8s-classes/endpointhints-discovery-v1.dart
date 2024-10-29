import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'endpointhints_discovery_v1.g.dart';


///EndpointHints provides hints describing how an endpoint should be consumed.
@JsonSerializable()
class EndpointhintsDiscoveryV1 {
    
    ///forZones indicates the zone(s) this endpoint should be consumed by to enable topology
    ///aware routing.
    @JsonKey(name: "forZones")
    List<IoK8SApiDiscoveryV1ForZone>? forZones;

    EndpointhintsDiscoveryV1({
        this.forZones,
    });

    factory EndpointhintsDiscoveryV1.fromJson(Map<String, dynamic> json) => _$EndpointhintsDiscoveryV1FromJson(json);

    Map<String, dynamic> toJson() => _$EndpointhintsDiscoveryV1ToJson(this);
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
