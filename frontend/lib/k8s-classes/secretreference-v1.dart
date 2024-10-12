import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'secretreference_v1.g.dart';


///SecretReference represents a Secret Reference. It has enough information to retrieve
///secret in any namespace
@JsonSerializable()
class SecretreferenceV1 {
    
    ///name is unique within a namespace to reference a secret resource.
    @JsonKey(name: "name")
    String? name;
    
    ///namespace defines the space within which the secret name must be unique.
    @JsonKey(name: "namespace")
    String? namespace;

    SecretreferenceV1({
        this.name,
        this.namespace,
    });

    factory SecretreferenceV1.fromJson(Map<String, dynamic> json) => _$SecretreferenceV1FromJson(json);

    Map<String, dynamic> toJson() => _$SecretreferenceV1ToJson(this);
}
