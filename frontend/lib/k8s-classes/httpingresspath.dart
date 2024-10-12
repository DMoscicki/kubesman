import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'httpingresspath.g.dart';


///HTTPIngressPath associates a path with a backend. Incoming urls matching the path are
///forwarded to the backend.
@JsonSerializable()
class Httpingresspath {
    
    ///backend defines the referenced service endpoint to which the traffic will be forwarded to.
    @JsonKey(name: "backend")
    IoK8SApiNetworkingV1IngressBackend backend;
    
    ///path is matched against the path of an incoming request. Currently it can contain
    ///characters disallowed from the conventional "path" part of a URL as defined by RFC 3986.
    ///Paths must begin with a '/' and must be present when using PathType with value "Exact" or
    ///"Prefix".
    @JsonKey(name: "path")
    String? path;
    
    ///pathType determines the interpretation of the path matching. PathType can be one of the
    ///following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL
    ///path prefix split by '/'. Matching is
    ///done on a path element by element basis. A path element refers is the
    ///list of labels in the path split by the '/' separator. A request is a
    ///match for path p if every p is an element-wise prefix of p of the
    ///request path. Note that if the last element of the path is a substring
    ///of the last element in request path, it is not a match (e.g. /foo/bar
    ///matches /foo/bar/baz, but does not match /foo/barbaz).
    ///* ImplementationSpecific: Interpretation of the Path matching is up to
    ///the IngressClass. Implementations can treat this as a separate PathType
    ///or treat it identically to Prefix or Exact path types.
    ///Implementations are required to support all path types.
    @JsonKey(name: "pathType")
    String? pathType;

    Httpingresspath({
        required this.backend,
        this.path,
        required this.pathType,
    });

    factory Httpingresspath.fromJson(Map<String, dynamic> json) => _$HttpingresspathFromJson(json);

    Map<String, dynamic> toJson() => _$HttpingresspathToJson(this);
}


///backend defines the referenced service endpoint to which the traffic will be forwarded
///to.
///
///IngressBackend describes all endpoints for a given service and port.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressBackend {
    
    ///resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress
    ///object. If resource is specified, a service.Name and service.Port must not be specified.
    ///This is a mutually exclusive setting with "Service".
    @JsonKey(name: "resource")
    IoK8SApiCoreV1TypedLocalObjectReference? resource;
    
    ///service references a service as a backend. This is a mutually exclusive setting with
    ///"Resource".
    @JsonKey(name: "service")
    IoK8SApiNetworkingV1IngressServiceBackend? service;

    IoK8SApiNetworkingV1IngressBackend({
        this.resource,
        this.service,
    });

    factory IoK8SApiNetworkingV1IngressBackend.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressBackendFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressBackendToJson(this);
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
