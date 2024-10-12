import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'servicestatus_v1.g.dart';


///ServiceStatus represents the current status of a service.
@JsonSerializable()
class ServicestatusV1 {
    
    ///Current service state
    @JsonKey(name: "conditions")
    List<IoK8SApimachineryPkgApisMetaV1Condition>? conditions;
    
    ///LoadBalancer contains the current status of the load-balancer, if one is present.
    @JsonKey(name: "loadBalancer")
    IoK8SApiCoreV1LoadBalancerStatus? loadBalancer;

    ServicestatusV1({
        this.conditions,
        this.loadBalancer,
    });

    factory ServicestatusV1.fromJson(Map<String, dynamic> json) => _$ServicestatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$ServicestatusV1ToJson(this);
}


///Condition contains details for one aspect of the current state of this API Resource.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1Condition {
    
    ///lastTransitionTime is the last time the condition transitioned from one status to
    ///another. This should be when the underlying condition changed.  If that is not known,
    ///then using the time when the API field changed is acceptable.
    @JsonKey(name: "lastTransitionTime")
    DateTime lastTransitionTime;
    
    ///message is a human readable message indicating details about the transition. This may be
    ///an empty string.
    @JsonKey(name: "message")
    String message;
    
    ///observedGeneration represents the .metadata.generation that the condition was set based
    ///upon. For instance, if .metadata.generation is currently 12, but the
    ///.status.conditions[x].observedGeneration is 9, the condition is out of date with respect
    ///to the current state of the instance.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///reason contains a programmatic identifier indicating the reason for the condition's last
    ///transition. Producers of specific condition types may define expected values and meanings
    ///for this field, and whether the values are considered a guaranteed API. The value should
    ///be a CamelCase string. This field may not be empty.
    @JsonKey(name: "reason")
    String reason;
    
    ///status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///type of condition in CamelCase or in foo.example.com/CamelCase.
    @JsonKey(name: "type")
    String type;

    IoK8SApimachineryPkgApisMetaV1Condition({
        required this.lastTransitionTime,
        required this.message,
        this.observedGeneration,
        required this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApimachineryPkgApisMetaV1Condition.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(this);
}


///LoadBalancer contains the current status of the load-balancer, if one is present.
///
///LoadBalancerStatus represents the status of a load-balancer.
@JsonSerializable()
class IoK8SApiCoreV1LoadBalancerStatus {
    
    ///Ingress is a list containing ingress points for the load-balancer. Traffic intended for
    ///the service should be sent to these ingress points.
    @JsonKey(name: "ingress")
    List<IoK8SApiCoreV1LoadBalancerIngress>? ingress;

    IoK8SApiCoreV1LoadBalancerStatus({
        this.ingress,
    });

    factory IoK8SApiCoreV1LoadBalancerStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LoadBalancerStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LoadBalancerStatusToJson(this);
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
