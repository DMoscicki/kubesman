import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'networkpolicyport_networking_v1.g.dart';


///NetworkPolicyPort describes a port to allow traffic on
@JsonSerializable()
class NetworkpolicyportNetworkingV1 {
    
    ///endPort indicates that the range of ports from port to endPort if set, inclusive, should
    ///be allowed by the policy. This field cannot be defined if the port field is not defined
    ///or if the port field is defined as a named (string) port. The endPort must be equal or
    ///greater than port.
    @JsonKey(name: "endPort")
    int? endPort;
    
    ///port represents the port on the given protocol. This can either be a numerical or named
    ///port on a pod. If this field is not provided, this matches all port names and numbers. If
    ///present, only traffic on the specified protocol AND port will be matched.
    @JsonKey(name: "port")
    dynamic port;
    
    ///protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match. If not
    ///specified, this field defaults to TCP.
    @JsonKey(name: "protocol")
    String? protocol;

    NetworkpolicyportNetworkingV1({
        this.endPort,
        this.port,
        this.protocol,
    });

    factory NetworkpolicyportNetworkingV1.fromJson(Map<String, dynamic> json) => _$NetworkpolicyportNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$NetworkpolicyportNetworkingV1ToJson(this);
}
