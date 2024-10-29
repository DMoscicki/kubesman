import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'hostip_v1.g.dart';


///HostIP represents a single IP address allocated to the host.
@JsonSerializable()
class HostipV1 {
    
    ///IP is the IP address assigned to the host
    @JsonKey(name: "ip")
    String? ip;

    HostipV1({
        this.ip,
    });

    factory HostipV1.fromJson(Map<String, dynamic> json) => _$HostipV1FromJson(json);

    Map<String, dynamic> toJson() => _$HostipV1ToJson(this);
}
