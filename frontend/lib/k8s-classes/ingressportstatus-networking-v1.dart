import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingressportstatus_networking_v1.g.dart';


///IngressPortStatus represents the error condition of a service port
@JsonSerializable()
class IngressportstatusNetworkingV1 {
    
    ///error is to record the problem with the service port The format of the error shall comply
    ///with the following rules: - built-in error values shall be specified in this file and
    ///those shall use
    ///CamelCase names
    ///- cloud provider specific error values must have names that comply with the
    ///format foo.example.com/CamelCase.
    @JsonKey(name: "error")
    String? error;
    
    ///port is the port number of the ingress port.
    @JsonKey(name: "port")
    int? port;
    
    ///protocol is the protocol of the ingress port. The supported values are: "TCP", "UDP",
    ///"SCTP"
    @JsonKey(name: "protocol")
    String? protocol;

    IngressportstatusNetworkingV1({
        this.error,
        required this.port,
        required this.protocol,
    });

    factory IngressportstatusNetworkingV1.fromJson(Map<String, dynamic> json) => _$IngressportstatusNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$IngressportstatusNetworkingV1ToJson(this);
}
