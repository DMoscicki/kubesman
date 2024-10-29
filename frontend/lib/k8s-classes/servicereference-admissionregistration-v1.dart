import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'servicereference_admissionregistration_v1.g.dart';


///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class ServicereferenceAdmissionregistrationV1 {
    
    ///`name` is the name of the service. Required
    @JsonKey(name: "name")
    String? name;
    
    ///`namespace` is the namespace of the service. Required
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///`path` is an optional URL path which will be sent in any request to this service.
    @JsonKey(name: "path")
    String? path;
    
    ///If specified, the port on the service that hosting webhook. Default to 443 for backward
    ///compatibility. `port` should be a valid port number (1-65535, inclusive).
    @JsonKey(name: "port")
    int? port;

    ServicereferenceAdmissionregistrationV1({
        required this.name,
        required this.namespace,
        this.path,
        this.port,
    });

    factory ServicereferenceAdmissionregistrationV1.fromJson(Map<String, dynamic> json) => _$ServicereferenceAdmissionregistrationV1FromJson(json);

    Map<String, dynamic> toJson() => _$ServicereferenceAdmissionregistrationV1ToJson(this);
}
