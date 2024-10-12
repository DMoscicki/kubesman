import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'secretkeyselector.g.dart';


///SecretKeySelector selects a key of a Secret.
@JsonSerializable()
class Secretkeyselector {
    
    ///The key of the secret to select from.  Must be a valid secret key.
    @JsonKey(name: "key")
    String? key;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the Secret or its key must be defined
    @JsonKey(name: "optional")
    bool? optional;

    Secretkeyselector({
        required this.key,
        this.name,
        this.optional,
    });

    factory Secretkeyselector.fromJson(Map<String, dynamic> json) => _$SecretkeyselectorFromJson(json);

    Map<String, dynamic> toJson() => _$SecretkeyselectorToJson(this);
}
