import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'apiservicespec.g.dart';


///APIServiceSpec contains information for locating and communicating with a server. Only
///https is supported, though you are able to disable certificate verification.
@JsonSerializable()
class Apiservicespec {
    
    ///CABundle is a PEM encoded CA bundle which will be used to validate an API server's
    ///serving certificate. If unspecified, system trust roots on the apiserver are used.
    @JsonKey(name: "caBundle")
    String? caBundle;
    
    ///Group is the API group name this server hosts
    @JsonKey(name: "group")
    String? group;
    
    ///GroupPriorityMinimum is the priority this group should have at least. Higher priority
    ///means that the group is preferred by clients over lower priority ones. Note that other
    ///versions of this group might specify even higher GroupPriorityMinimum values such that
    ///the whole group gets a higher priority. The primary sort is based on
    ///GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort
    ///is based on the alphabetical comparison of the name of the object.  (v1.bar before
    ///v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes
    ///(OpenShift, Deis) are recommended to be in the 2000s
    @JsonKey(name: "groupPriorityMinimum")
    int? groupPriorityMinimum;
    
    ///InsecureSkipTLSVerify disables TLS certificate verification when communicating with this
    ///server. This is strongly discouraged.  You should use the CABundle instead.
    @JsonKey(name: "insecureSkipTLSVerify")
    bool? insecureSkipTlsVerify;
    
    ///Service is a reference to the service for this API server.  It must communicate on port
    ///443. If the Service is nil, that means the handling for the API groupversion is handled
    ///locally on this server. The call will simply delegate to the normal handler chain to be
    ///fulfilled.
    @JsonKey(name: "service")
    IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference? service;
    
    ///Version is the API version this server hosts.  For example, "v1"
    @JsonKey(name: "version")
    String? version;
    
    ///VersionPriority controls the ordering of this API version inside of its group.  Must be
    ///greater than zero. The primary sort is based on VersionPriority, ordered highest to
    ///lowest (20 before 10). Since it's inside of a group, the number can be small, probably in
    ///the 10s. In case of equal version priorities, the version string will be used to compute
    ///the order inside a group. If the version string is "kube-like", it will sort above non
    ///"kube-like" version strings, which are ordered lexicographically. "Kube-like" versions
    ///start with a "v", then are followed by a number (the major version), then optionally the
    ///string "alpha" or "beta" and another number (the minor version). These are sorted first
    ///by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and
    ///then by comparing major version, then minor version. An example sorted list of versions:
    ///v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    @JsonKey(name: "versionPriority")
    int? versionPriority;

    Apiservicespec({
        this.caBundle,
        this.group,
        required this.groupPriorityMinimum,
        this.insecureSkipTlsVerify,
        this.service,
        this.version,
        required this.versionPriority,
    });

    factory Apiservicespec.fromJson(Map<String, dynamic> json) => _$ApiservicespecFromJson(json);

    Map<String, dynamic> toJson() => _$ApiservicespecToJson(this);
}


///Service is a reference to the service for this API server.  It must communicate on port
///443. If the Service is nil, that means the handling for the API groupversion is handled
///locally on this server. The call will simply delegate to the normal handler chain to be
///fulfilled.
///
///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference {
    
    ///Name is the name of the service
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace is the namespace of the service
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///If specified, the port on the service that hosting webhook. Default to 443 for backward
    ///compatibility. `port` should be a valid port number (1-65535, inclusive).
    @JsonKey(name: "port")
    int? port;

    IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference({
        this.name,
        this.namespace,
        this.port,
    });

    factory IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference.fromJson(Map<String, dynamic> json) => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReferenceToJson(this);
}
