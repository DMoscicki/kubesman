import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'loadbalancerstatus_v1.g.dart';


///LoadBalancerStatus represents the status of a load-balancer.
@JsonSerializable()
class LoadbalancerstatusV1 {
    
    ///Ingress is a list containing ingress points for the load-balancer. Traffic intended for
    ///the service should be sent to these ingress points.
    @JsonKey(name: "ingress")
    List<IoK8SApiCoreV1LoadBalancerIngress>? ingress;

    LoadbalancerstatusV1({
        this.ingress,
    });

    factory LoadbalancerstatusV1.fromJson(Map<String, dynamic> json) => _$LoadbalancerstatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$LoadbalancerstatusV1ToJson(this);
}


///LoadBalancerIngress represents the status of a load-balancer ingress point: traffic
///intended for the service should be sent to an ingress point.
@JsonSerializable()
class IoK8SApiCoreV1LoadBalancerIngress {
    
    ///Hostname is set for load-balancer ingress points that are DNS based (typically AWS
    ///load-balancers)
    @JsonKey(name: "hostname")
    String? hostname;
    
    ///IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack
    ///load-balancers)
    @JsonKey(name: "ip")
    String? ip;
    
    ///IPMode specifies how the load-balancer IP behaves, and may only be specified when the ip
    ///field is specified. Setting this to "VIP" indicates that traffic is delivered to the node
    ///with the destination set to the load-balancer's IP and port. Setting this to "Proxy"
    ///indicates that traffic is delivered to the node or pod with the destination set to the
    ///node's IP and node port or the pod's IP and port. Service implementations may use this
    ///information to adjust traffic routing.
    @JsonKey(name: "ipMode")
    String? ipMode;
    
    ///Ports is a list of records of service ports If used, every port defined in the service
    ///should have an entry in it
    @JsonKey(name: "ports")
    List<IoK8SApiCoreV1PortStatus>? ports;

    IoK8SApiCoreV1LoadBalancerIngress({
        this.hostname,
        this.ip,
        this.ipMode,
        this.ports,
    });

    factory IoK8SApiCoreV1LoadBalancerIngress.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LoadBalancerIngressFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LoadBalancerIngressToJson(this);
}

@JsonSerializable()
class IoK8SApiCoreV1PortStatus {
    
    ///Error is to record the problem with the service port The format of the error shall comply
    ///with the following rules: - built-in error values shall be specified in this file and
    ///those shall use
    ///CamelCase names
    ///- cloud provider specific error values must have names that comply with the
    ///format foo.example.com/CamelCase.
    @JsonKey(name: "error")
    String? error;
    
    ///Port is the port number of the service port of which status is recorded here
    @JsonKey(name: "port")
    int port;
    
    ///Protocol is the protocol of the service port of which status is recorded here The
    ///supported values are: "TCP", "UDP", "SCTP"
    @JsonKey(name: "protocol")
    String protocol;

    IoK8SApiCoreV1PortStatus({
        this.error,
        required this.port,
        required this.protocol,
    });

    factory IoK8SApiCoreV1PortStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PortStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PortStatusToJson(this);
}
