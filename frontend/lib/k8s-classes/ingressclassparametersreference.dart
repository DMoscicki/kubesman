import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingressclassparametersreference.g.dart';


///IngressClassParametersReference identifies an API object. This can be used to specify a
///cluster or namespace-scoped resource.
@JsonSerializable()
class Ingressclassparametersreference {
    
    ///apiGroup is the group for the resource being referenced. If APIGroup is not specified,
    ///the specified Kind must be in the core API group. For any other third-party types,
    ///APIGroup is required.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///kind is the type of resource being referenced.
    @JsonKey(name: "kind")
    String? kind;
    
    ///name is the name of resource being referenced.
    @JsonKey(name: "name")
    String? name;
    
    ///namespace is the namespace of the resource being referenced. This field is required when
    ///scope is set to "Namespace" and must be unset when scope is set to "Cluster".
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///scope represents if this refers to a cluster or namespace scoped resource. This may be
    ///set to "Cluster" (default) or "Namespace".
    @JsonKey(name: "scope")
    String? scope;

    Ingressclassparametersreference({
        this.apiGroup,
        required this.kind,
        required this.name,
        this.namespace,
        this.scope,
    });

    factory Ingressclassparametersreference.fromJson(Map<String, dynamic> json) => _$IngressclassparametersreferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IngressclassparametersreferenceToJson(this);
}
