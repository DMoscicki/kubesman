import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'secretenvsource.g.dart';


///SecretEnvSource selects a Secret to populate the environment variables with.
///
///The contents of the target Secret's Data field will represent the key-value pairs as
///environment variables.
@JsonSerializable()
class Secretenvsource {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the Secret must be defined
    @JsonKey(name: "optional")
    bool? optional;

    Secretenvsource({
        this.name,
        this.optional,
    });

    factory Secretenvsource.fromJson(Map<String, dynamic> json) => _$SecretenvsourceFromJson(json);

    Map<String, dynamic> toJson() => _$SecretenvsourceToJson(this);
}
