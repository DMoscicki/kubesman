import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'localobjectreference.g.dart';


///LocalObjectReference contains enough information to let you locate the referenced object
///inside the same namespace.
@JsonSerializable()
class Localobjectreference {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;

    Localobjectreference({
        this.name,
    });

    factory Localobjectreference.fromJson(Map<String, dynamic> json) => _$LocalobjectreferenceFromJson(json);

    Map<String, dynamic> toJson() => _$LocalobjectreferenceToJson(this);
}
