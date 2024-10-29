import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'servicereference_apiextensions_v1.g.dart';


///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class ServicereferenceApiextensionsV1 {
    
    ///name is the name of the service. Required
    @JsonKey(name: "name")
    String? name;
    
    ///namespace is the namespace of the service. Required
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///path is an optional URL path at which the webhook will be contacted.
    @JsonKey(name: "path")
    String? path;
    
    ///port is an optional service port at which the webhook will be contacted. `port` should be
    ///a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
    @JsonKey(name: "port")
    int? port;

    ServicereferenceApiextensionsV1({
        required this.name,
        required this.namespace,
        this.path,
        this.port,
    });

    factory ServicereferenceApiextensionsV1.fromJson(Map<String, dynamic> json) => _$ServicereferenceApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$ServicereferenceApiextensionsV1ToJson(this);
}
