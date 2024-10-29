import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'selectablefield_apiextensions_v1.g.dart';


///SelectableField specifies the JSON path of a field that may be used with field selectors.
@JsonSerializable()
class SelectablefieldApiextensionsV1 {
    
    ///jsonPath is a simple JSON path which is evaluated against each custom resource to produce
    ///a field selector value. Only JSON paths without the array notation are allowed. Must
    ///point to a field of type string, boolean or integer. Types with enum values and strings
    ///with formats are allowed. If jsonPath refers to absent field in a resource, the jsonPath
    ///evaluates to an empty string. Must not point to metdata fields. Required.
    @JsonKey(name: "jsonPath")
    String? jsonPath;

    SelectablefieldApiextensionsV1({
        required this.jsonPath,
    });

    factory SelectablefieldApiextensionsV1.fromJson(Map<String, dynamic> json) => _$SelectablefieldApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$SelectablefieldApiextensionsV1ToJson(this);
}
