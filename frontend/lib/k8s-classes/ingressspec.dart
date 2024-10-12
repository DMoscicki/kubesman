import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingressspec.g.dart';


///IngressSpec describes the Ingress the user wishes to exist.
@JsonSerializable()
class Ingressspec {
    
    ///defaultBackend is the backend that should handle requests that don't match any rule. If
    ///Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set,
    ///the handling of requests that do not match any of the rules will be up to the Ingress
    ///controller.
    @JsonKey(name: "defaultBackend")
    IoK8SApiNetworkingV1IngressBackend? defaultBackend;
    
    ///ingressClassName is the name of an IngressClass cluster resource. Ingress controller
    ///implementations use this field to know whether they should be serving this Ingress
    ///resource, by a transitive connection (controller -> IngressClass -> Ingress resource).
    ///Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never
    ///formally defined, it was widely supported by Ingress controllers to create a direct
    ///binding between Ingress controller and Ingress resources. Newly created Ingress resources
    ///should prefer using the field. However, even though the annotation is officially
    ///deprecated, for backwards compatibility reasons, ingress controllers should still honor
    ///that annotation if present.
    @JsonKey(name: "ingressClassName")
    String? ingressClassName;
    
    ///rules is a list of host rules used to configure the Ingress. If unspecified, or no rule
    ///matches, all traffic is sent to the default backend.
    @JsonKey(name: "rules")
    List<IoK8SApiNetworkingV1IngressRule>? rules;
    
    ///tls represents the TLS configuration. Currently the Ingress only supports a single TLS
    ///port, 443. If multiple members of this list specify different hosts, they will be
    ///multiplexed on the same port according to the hostname specified through the SNI TLS
    ///extension, if the ingress controller fulfilling the ingress supports SNI.
    @JsonKey(name: "tls")
    List<IoK8SApiNetworkingV1IngressTls>? tls;

    Ingressspec({
        this.defaultBackend,
        this.ingressClassName,
        this.rules,
        this.tls,
    });

    factory Ingressspec.fromJson(Map<String, dynamic> json) => _$IngressspecFromJson(json);

    Map<String, dynamic> toJson() => _$IngressspecToJson(this);
}


///defaultBackend is the backend that should handle requests that don't match any rule. If
///Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set,
///the handling of requests that do not match any of the rules will be up to the Ingress
///controller.
///
///IngressBackend describes all endpoints for a given service and port.
///
///backend defines the referenced service endpoint to which the traffic will be forwarded to.
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


///IngressRule represents the rules mapping the paths under a specified host to the related
///backend services. Incoming requests are first evaluated for a host match, then routed to
///the backend associated with the matching IngressRuleValue.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressRule {
    
    ///host is the fully qualified domain name of a network host, as defined by RFC 3986. Note
    ///the following deviations from the "host" part of the URI as defined in RFC 3986: 1. IPs
    ///are not allowed. Currently an IngressRuleValue can only apply to
    ///the IP in the Spec of the parent Ingress.
    ///2. The `:` delimiter is not respected because ports are not allowed.
    ///Currently the port of an Ingress is implicitly :80 for http and
    ///:443 for https.
    ///Both these may change in the future. Incoming requests are matched against the host
    ///before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic
    ///based on the specified IngressRuleValue.
    ///
    ///host can be "precise" which is a domain name without the terminating dot of a network
    ///host (e.g. "foo.bar.com") or "wildcard", which is a domain name prefixed with a single
    ///wildcard label (e.g. "*.foo.com"). The wildcard character '*' must appear by itself as
    ///the first DNS label and matches only a single label. You cannot have a wildcard label by
    ///itself (e.g. Host == "*"). Requests will be matched against the Host field in the
    ///following way: 1. If host is precise, the request matches this rule if the http host
    ///header is equal to Host. 2. If host is a wildcard, then the request matches this rule if
    ///the http host header is to equal to the suffix (removing the first label) of the wildcard
    ///rule.
    @JsonKey(name: "host")
    String? host;
    @JsonKey(name: "http")
    IoK8SApiNetworkingV1HttpIngressRuleValue? http;

    IoK8SApiNetworkingV1IngressRule({
        this.host,
        this.http,
    });

    factory IoK8SApiNetworkingV1IngressRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressRuleToJson(this);
}


///HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example:
///http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to
///RFC 3986, this resource will be used to match against everything after the last '/' and
///before the first '?' or '#'.
@JsonSerializable()
class IoK8SApiNetworkingV1HttpIngressRuleValue {
    
    ///paths is a collection of paths that map requests to backends.
    @JsonKey(name: "paths")
    List<IoK8SApiNetworkingV1HttpIngressPath> paths;

    IoK8SApiNetworkingV1HttpIngressRuleValue({
        required this.paths,
    });

    factory IoK8SApiNetworkingV1HttpIngressRuleValue.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1HttpIngressRuleValueFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1HttpIngressRuleValueToJson(this);
}


///HTTPIngressPath associates a path with a backend. Incoming urls matching the path are
///forwarded to the backend.
@JsonSerializable()
class IoK8SApiNetworkingV1HttpIngressPath {
    
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
    String pathType;

    IoK8SApiNetworkingV1HttpIngressPath({
        required this.backend,
        this.path,
        required this.pathType,
    });

    factory IoK8SApiNetworkingV1HttpIngressPath.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1HttpIngressPathFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1HttpIngressPathToJson(this);
}


///IngressTLS describes the transport layer security associated with an ingress.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressTls {
    
    ///hosts is a list of hosts included in the TLS certificate. The values in this list must
    ///match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the
    ///loadbalancer controller fulfilling this Ingress, if left unspecified.
    @JsonKey(name: "hosts")
    List<String>? hosts;
    
    ///secretName is the name of the secret used to terminate TLS traffic on port 443. Field is
    ///left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a
    ///listener conflicts with the "Host" header field used by an IngressRule, the SNI host is
    ///used for termination and value of the "Host" header is used for routing.
    @JsonKey(name: "secretName")
    String? secretName;

    IoK8SApiNetworkingV1IngressTls({
        this.hosts,
        this.secretName,
    });

    factory IoK8SApiNetworkingV1IngressTls.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressTlsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressTlsToJson(this);
}
