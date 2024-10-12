import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingressstatus_networking_v1.g.dart';


///IngressStatus describe the current state of the Ingress.
@JsonSerializable()
class IngressstatusNetworkingV1 {
    
    ///loadBalancer contains the current status of the load-balancer.
    @JsonKey(name: "loadBalancer")
    IoK8SApiNetworkingV1IngressLoadBalancerStatus? loadBalancer;

    IngressstatusNetworkingV1({
        this.loadBalancer,
    });

    factory IngressstatusNetworkingV1.fromJson(Map<String, dynamic> json) => _$IngressstatusNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$IngressstatusNetworkingV1ToJson(this);
}


///loadBalancer contains the current status of the load-balancer.
///
///IngressLoadBalancerStatus represents the status of a load-balancer.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressLoadBalancerStatus {
    
    ///ingress is a list containing ingress points for the load-balancer.
    @JsonKey(name: "ingress")
    List<IoK8SApiNetworkingV1IngressLoadBalancerIngress>? ingress;

    IoK8SApiNetworkingV1IngressLoadBalancerStatus({
        this.ingress,
    });

    factory IoK8SApiNetworkingV1IngressLoadBalancerStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressLoadBalancerStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressLoadBalancerStatusToJson(this);
}


///IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressLoadBalancerIngress {
    
    ///hostname is set for load-balancer ingress points that are DNS based.
    @JsonKey(name: "hostname")
    String? hostname;
    
    ///ip is set for load-balancer ingress points that are IP based.
    @JsonKey(name: "ip")
    String? ip;
    
    ///ports provides information about the ports exposed by this LoadBalancer.
    @JsonKey(name: "ports")
    List<IoK8SApiNetworkingV1IngressPortStatus>? ports;

    IoK8SApiNetworkingV1IngressLoadBalancerIngress({
        this.hostname,
        this.ip,
        this.ports,
    });

    factory IoK8SApiNetworkingV1IngressLoadBalancerIngress.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressLoadBalancerIngressFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressLoadBalancerIngressToJson(this);
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
