import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingressloadbalanceringress_networking_v1.g.dart';


///IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
@JsonSerializable()
class IngressloadbalanceringressNetworkingV1 {
    
    ///hostname is set for load-balancer ingress points that are DNS based.
    @JsonKey(name: "hostname")
    String? hostname;
    
    ///ip is set for load-balancer ingress points that are IP based.
    @JsonKey(name: "ip")
    String? ip;
    
    ///ports provides information about the ports exposed by this LoadBalancer.
    @JsonKey(name: "ports")
    List<IoK8SApiNetworkingV1IngressPortStatus>? ports;

    IngressloadbalanceringressNetworkingV1({
        this.hostname,
        this.ip,
        this.ports,
    });

    factory IngressloadbalanceringressNetworkingV1.fromJson(Map<String, dynamic> json) => _$IngressloadbalanceringressNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$IngressloadbalanceringressNetworkingV1ToJson(this);
}


///IngressPortStatus represents the error condition of a service port
@JsonSerializable()
class IoK8SApiNetworkingV1IngressPortStatus {
    
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
    int port;
    
    ///protocol is the protocol of the ingress port. The supported values are: "TCP", "UDP",
    ///"SCTP"
    @JsonKey(name: "protocol")
    String protocol;

    IoK8SApiNetworkingV1IngressPortStatus({
        this.error,
        required this.port,
        required this.protocol,
    });

    factory IoK8SApiNetworkingV1IngressPortStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressPortStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressPortStatusToJson(this);
}
