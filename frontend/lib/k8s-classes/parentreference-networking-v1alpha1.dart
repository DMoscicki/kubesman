import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'parentreference_networking_v1_alpha1.g.dart';


///ParentReference describes a reference to a parent object.
@JsonSerializable()
class ParentreferenceNetworkingV1Alpha1 {
    
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

    ParentreferenceNetworkingV1Alpha1({
        this.group,
        required this.name,
        this.namespace,
        required this.resource,
    });

    factory ParentreferenceNetworkingV1Alpha1.fromJson(Map<String, dynamic> json) => _$ParentreferenceNetworkingV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$ParentreferenceNetworkingV1Alpha1ToJson(this);
}
