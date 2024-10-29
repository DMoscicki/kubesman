import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingressclassspec.g.dart';


///IngressClassSpec provides information about the class of an Ingress.
@JsonSerializable()
class Ingressclassspec {
    
    ///controller refers to the name of the controller that should handle this class. This
    ///allows for different "flavors" that are controlled by the same controller. For example,
    ///you may have different parameters for the same implementing controller. This should be
    ///specified as a domain-prefixed path no more than 250 characters in length, e.g.
    ///"acme.io/ingress-controller". This field is immutable.
    @JsonKey(name: "controller")
    String? controller;
    
    ///parameters is a link to a custom resource containing additional configuration for the
    ///controller. This is optional if the controller does not require extra parameters.
    @JsonKey(name: "parameters")
    IoK8SApiNetworkingV1IngressClassParametersReference? parameters;

    Ingressclassspec({
        this.controller,
        this.parameters,
    });

    factory Ingressclassspec.fromJson(Map<String, dynamic> json) => _$IngressclassspecFromJson(json);

    Map<String, dynamic> toJson() => _$IngressclassspecToJson(this);
}


///parameters is a link to a custom resource containing additional configuration for the
///controller. This is optional if the controller does not require extra parameters.
///
///IngressClassParametersReference identifies an API object. This can be used to specify a
///cluster or namespace-scoped resource.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressClassParametersReference {
    
    ///apiGroup is the group for the resource being referenced. If APIGroup is not specified,
    ///the specified Kind must be in the core API group. For any other third-party types,
    ///APIGroup is required.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///kind is the type of resource being referenced.
    @JsonKey(name: "kind")
    String kind;
    
    ///name is the name of resource being referenced.
    @JsonKey(name: "name")
    String name;
    
    ///namespace is the namespace of the resource being referenced. This field is required when
    ///scope is set to "Namespace" and must be unset when scope is set to "Cluster".
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///scope represents if this refers to a cluster or namespace scoped resource. This may be
    ///set to "Cluster" (default) or "Namespace".
    @JsonKey(name: "scope")
    String? scope;

    IoK8SApiNetworkingV1IngressClassParametersReference({
        this.apiGroup,
        required this.kind,
        required this.name,
        this.namespace,
        this.scope,
    });

    factory IoK8SApiNetworkingV1IngressClassParametersReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressClassParametersReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressClassParametersReferenceToJson(this);
}
