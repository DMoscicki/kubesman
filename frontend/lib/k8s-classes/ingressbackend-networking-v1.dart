import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingressbackend_networking_v1.g.dart';


///IngressBackend describes all endpoints for a given service and port.
@JsonSerializable()
class IngressbackendNetworkingV1 {
    
    ///resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress
    ///object. If resource is specified, a service.Name and service.Port must not be specified.
    ///This is a mutually exclusive setting with "Service".
    @JsonKey(name: "resource")
    IoK8SApiCoreV1TypedLocalObjectReference? resource;
    
    ///service references a service as a backend. This is a mutually exclusive setting with
    ///"Resource".
    @JsonKey(name: "service")
    IoK8SApiNetworkingV1IngressServiceBackend? service;

    IngressbackendNetworkingV1({
        this.resource,
        this.service,
    });

    factory IngressbackendNetworkingV1.fromJson(Map<String, dynamic> json) => _$IngressbackendNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$IngressbackendNetworkingV1ToJson(this);
}


///resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress
///object. If resource is specified, a service.Name and service.Port must not be specified.
///This is a mutually exclusive setting with "Service".
///
///TypedLocalObjectReference contains enough information to let you locate the typed
///referenced object inside the same namespace.
@JsonSerializable()
class IoK8SApiCoreV1TypedLocalObjectReference {
    
    ///APIGroup is the group for the resource being referenced. If APIGroup is not specified,
    ///the specified Kind must be in the core API group. For any other third-party types,
    ///APIGroup is required.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced
    @JsonKey(name: "kind")
    String kind;
    
    ///Name is the name of resource being referenced
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1TypedLocalObjectReference({
        this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory IoK8SApiCoreV1TypedLocalObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TypedLocalObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TypedLocalObjectReferenceToJson(this);
}


///service references a service as a backend. This is a mutually exclusive setting with
///"Resource".
///
///IngressServiceBackend references a Kubernetes Service as a Backend.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressServiceBackend {
    
    ///name is the referenced service. The service must exist in the same namespace as the
    ///Ingress object.
    @JsonKey(name: "name")
    String name;
    
    ///port of the referenced service. A port name or port number is required for a
    ///IngressServiceBackend.
    @JsonKey(name: "port")
    IoK8SApiNetworkingV1ServiceBackendPort? port;

    IoK8SApiNetworkingV1IngressServiceBackend({
        required this.name,
        this.port,
    });

    factory IoK8SApiNetworkingV1IngressServiceBackend.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressServiceBackendFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressServiceBackendToJson(this);
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
