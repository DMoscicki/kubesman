import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'roleref.g.dart';


///RoleRef contains information that points to the role being used
@JsonSerializable()
class Roleref {
    
    ///APIGroup is the group for the resource being referenced
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name is the name of resource being referenced
    @JsonKey(name: "name")
    String? name;

    Roleref({
        required this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory Roleref.fromJson(Map<String, dynamic> json) => _$RolerefFromJson(json);

    Map<String, dynamic> toJson() => _$RolerefToJson(this);
}
