import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'boundobjectreference.g.dart';


///BoundObjectReference is a reference to an object that a token is bound to.
@JsonSerializable()
class Boundobjectreference {
    
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

    Boundobjectreference({
        this.apiVersion,
        this.kind,
        this.name,
        this.uid,
    });

    factory Boundobjectreference.fromJson(Map<String, dynamic> json) => _$BoundobjectreferenceFromJson(json);

    Map<String, dynamic> toJson() => _$BoundobjectreferenceToJson(this);
}
