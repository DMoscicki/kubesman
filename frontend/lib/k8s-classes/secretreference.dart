import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'secretreference.g.dart';


///SecretReference represents a Secret Reference. It has enough information to retrieve
///secret in any namespace
@JsonSerializable()
class Secretreference {
    
    ///name is unique within a namespace to reference a secret resource.
    @JsonKey(name: "name")
    String? name;
    
    ///namespace defines the space within which the secret name must be unique.
    @JsonKey(name: "namespace")
    String? namespace;

    Secretreference({
        this.name,
        this.namespace,
    });

    factory Secretreference.fromJson(Map<String, dynamic> json) => _$SecretreferenceFromJson(json);

    Map<String, dynamic> toJson() => _$SecretreferenceToJson(this);
}
