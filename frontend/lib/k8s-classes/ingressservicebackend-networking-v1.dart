import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingressservicebackend_networking_v1.g.dart';


///IngressServiceBackend references a Kubernetes Service as a Backend.
@JsonSerializable()
class IngressservicebackendNetworkingV1 {
    
    ///name is the referenced service. The service must exist in the same namespace as the
    ///Ingress object.
    @JsonKey(name: "name")
    String? name;
    
    ///port of the referenced service. A port name or port number is required for a
    ///IngressServiceBackend.
    @JsonKey(name: "port")
    IoK8SApiNetworkingV1ServiceBackendPort? port;

    IngressservicebackendNetworkingV1({
        required this.name,
        this.port,
    });

    factory IngressservicebackendNetworkingV1.fromJson(Map<String, dynamic> json) => _$IngressservicebackendNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$IngressservicebackendNetworkingV1ToJson(this);
}


///port of the referenced service. A port name or port number is required for a
///IngressServiceBackend.
///
///ServiceBackendPort is the service port being referenced.
@JsonSerializable()
class IoK8SApiNetworkingV1ServiceBackendPort {
    
    ///name is the name of the port on the Service. This is a mutually exclusive setting with
    ///"Number".
    @JsonKey(name: "name")
    String? name;
    
    ///number is the numerical port number (e.g. 80) on the Service. This is a mutually
    ///exclusive setting with "Name".
    @JsonKey(name: "number")
    int? number;

    IoK8SApiNetworkingV1ServiceBackendPort({
        this.name,
        this.number,
    });

    factory IoK8SApiNetworkingV1ServiceBackendPort.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1ServiceBackendPortFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1ServiceBackendPortToJson(this);
}
