import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'parentreference.g.dart';


///ParentReference describes a reference to a parent object.
@JsonSerializable()
class Parentreference {
    
    ///Group is the group of the object being referenced.
    @JsonKey(name: "group")
    String? group;
    
    ///Name is the name of the object being referenced.
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace is the namespace of the object being referenced.
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///Resource is the resource of the object being referenced.
    @JsonKey(name: "resource")
    String? resource;

    Parentreference({
        this.group,
        required this.name,
        this.namespace,
        required this.resource,
    });

    factory Parentreference.fromJson(Map<String, dynamic> json) => _$ParentreferenceFromJson(json);

    Map<String, dynamic> toJson() => _$ParentreferenceToJson(this);
}
