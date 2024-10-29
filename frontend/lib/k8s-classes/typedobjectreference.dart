import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'typedobjectreference.g.dart';

@JsonSerializable()
class Typedobjectreference {
    
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
    
    ///Namespace is the namespace of resource being referenced Note that when a namespace is
    ///specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent
    ///namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant
    ///documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource
    ///feature gate to be enabled.
    @JsonKey(name: "namespace")
    String? namespace;

    Typedobjectreference({
        this.apiGroup,
        required this.kind,
        required this.name,
        this.namespace,
    });

    factory Typedobjectreference.fromJson(Map<String, dynamic> json) => _$TypedobjectreferenceFromJson(json);

    Map<String, dynamic> toJson() => _$TypedobjectreferenceToJson(this);
}
