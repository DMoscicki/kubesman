import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'localobjectreference_v1.g.dart';


///LocalObjectReference contains enough information to let you locate the referenced object
///inside the same namespace.
@JsonSerializable()
class LocalobjectreferenceV1 {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;

    LocalobjectreferenceV1({
        this.name,
    });

    factory LocalobjectreferenceV1.fromJson(Map<String, dynamic> json) => _$LocalobjectreferenceV1FromJson(json);

    Map<String, dynamic> toJson() => _$LocalobjectreferenceV1ToJson(this);
}
