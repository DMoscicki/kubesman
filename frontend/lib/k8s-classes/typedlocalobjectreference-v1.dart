import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'typedlocalobjectreference_v1.g.dart';


///TypedLocalObjectReference contains enough information to let you locate the typed
///referenced object inside the same namespace.
@JsonSerializable()
class TypedlocalobjectreferenceV1 {
    
    ///APIGroup is the group for the resource being referenced. If APIGroup is not specified,
    ///the specified Kind must be in the core API group. For any other third-party types,
    ///APIGroup is required.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name is the name of resource being referenced
    @JsonKey(name: "name")
    String? name;

    TypedlocalobjectreferenceV1({
        this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory TypedlocalobjectreferenceV1.fromJson(Map<String, dynamic> json) => _$TypedlocalobjectreferenceV1FromJson(json);

    Map<String, dynamic> toJson() => _$TypedlocalobjectreferenceV1ToJson(this);
}
