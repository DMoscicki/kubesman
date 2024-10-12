import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'boundobjectreference_authentication_v1.g.dart';


///BoundObjectReference is a reference to an object that a token is bound to.
@JsonSerializable()
class BoundobjectreferenceAuthenticationV1 {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name of the referent.
    @JsonKey(name: "name")
    String? name;
    
    ///UID of the referent.
    @JsonKey(name: "uid")
    String? uid;

    BoundobjectreferenceAuthenticationV1({
        this.apiVersion,
        this.kind,
        this.name,
        this.uid,
    });

    factory BoundobjectreferenceAuthenticationV1.fromJson(Map<String, dynamic> json) => _$BoundobjectreferenceAuthenticationV1FromJson(json);

    Map<String, dynamic> toJson() => _$BoundobjectreferenceAuthenticationV1ToJson(this);
}
