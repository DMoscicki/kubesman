import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'serviceaccountsubject_flowcontrol_v1.g.dart';


///ServiceAccountSubject holds detailed information for service-account-kind subject.
@JsonSerializable()
class ServiceaccountsubjectFlowcontrolV1 {
    
    ///`name` is the name of matching ServiceAccount objects, or "*" to match regardless of
    ///name. Required.
    @JsonKey(name: "name")
    String? name;
    
    ///`namespace` is the namespace of matching ServiceAccount objects. Required.
    @JsonKey(name: "namespace")
    String? namespace;

    ServiceaccountsubjectFlowcontrolV1({
        required this.name,
        required this.namespace,
    });

    factory ServiceaccountsubjectFlowcontrolV1.fromJson(Map<String, dynamic> json) => _$ServiceaccountsubjectFlowcontrolV1FromJson(json);

    Map<String, dynamic> toJson() => _$ServiceaccountsubjectFlowcontrolV1ToJson(this);
}
