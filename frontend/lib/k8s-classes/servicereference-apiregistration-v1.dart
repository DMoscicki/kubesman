import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'servicereference_apiregistration_v1.g.dart';


///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class ServicereferenceApiregistrationV1 {
    
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

    ServicereferenceApiregistrationV1({
        this.name,
        this.namespace,
        this.port,
    });

    factory ServicereferenceApiregistrationV1.fromJson(Map<String, dynamic> json) => _$ServicereferenceApiregistrationV1FromJson(json);

    Map<String, dynamic> toJson() => _$ServicereferenceApiregistrationV1ToJson(this);
}
