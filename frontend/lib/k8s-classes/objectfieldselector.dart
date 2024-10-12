import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'objectfieldselector.g.dart';


///ObjectFieldSelector selects an APIVersioned field of an object.
@JsonSerializable()
class Objectfieldselector {
    
    ///Version of the schema the FieldPath is written in terms of, defaults to "v1".
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Path of the field to select in the specified API version.
    @JsonKey(name: "fieldPath")
    String? fieldPath;

    Objectfieldselector({
        this.apiVersion,
        required this.fieldPath,
    });

    factory Objectfieldselector.fromJson(Map<String, dynamic> json) => _$ObjectfieldselectorFromJson(json);

    Map<String, dynamic> toJson() => _$ObjectfieldselectorToJson(this);
}
