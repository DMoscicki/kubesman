import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'configmapkeyselector.g.dart';


///Selects a key from a ConfigMap.
@JsonSerializable()
class Configmapkeyselector {
    
    ///The key to select.
    @JsonKey(name: "key")
    String? key;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the ConfigMap or its key must be defined
    @JsonKey(name: "optional")
    bool? optional;

    Configmapkeyselector({
        required this.key,
        this.name,
        this.optional,
    });

    factory Configmapkeyselector.fromJson(Map<String, dynamic> json) => _$ConfigmapkeyselectorFromJson(json);

    Map<String, dynamic> toJson() => _$ConfigmapkeyselectorToJson(this);
}
