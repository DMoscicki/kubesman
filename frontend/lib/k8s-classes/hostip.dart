import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'hostip.g.dart';


///HostIP represents a single IP address allocated to the host.
@JsonSerializable()
class Hostip {
    
    ///IP is the IP address assigned to the host
    @JsonKey(name: "ip")
    String? ip;

    Hostip({
        this.ip,
    });

    factory Hostip.fromJson(Map<String, dynamic> json) => _$HostipFromJson(json);

    Map<String, dynamic> toJson() => _$HostipToJson(this);
}
