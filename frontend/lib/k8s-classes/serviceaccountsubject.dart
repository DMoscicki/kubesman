import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'serviceaccountsubject.g.dart';


///ServiceAccountSubject holds detailed information for service-account-kind subject.
@JsonSerializable()
class Serviceaccountsubject {
    
    ///`name` is the name of matching ServiceAccount objects, or "*" to match regardless of
    ///name. Required.
    @JsonKey(name: "name")
    String? name;
    
    ///`namespace` is the namespace of matching ServiceAccount objects. Required.
    @JsonKey(name: "namespace")
    String? namespace;

    Serviceaccountsubject({
        required this.name,
        required this.namespace,
    });

    factory Serviceaccountsubject.fromJson(Map<String, dynamic> json) => _$ServiceaccountsubjectFromJson(json);

    Map<String, dynamic> toJson() => _$ServiceaccountsubjectToJson(this);
}
