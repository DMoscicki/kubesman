import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'configmapenvsource.g.dart';


///ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
///
///The contents of the target ConfigMap's Data field will represent the key-value pairs as
///environment variables.
@JsonSerializable()
class Configmapenvsource {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the ConfigMap must be defined
    @JsonKey(name: "optional")
    bool? optional;

    Configmapenvsource({
        this.name,
        this.optional,
    });

    factory Configmapenvsource.fromJson(Map<String, dynamic> json) => _$ConfigmapenvsourceFromJson(json);

    Map<String, dynamic> toJson() => _$ConfigmapenvsourceToJson(this);
}
