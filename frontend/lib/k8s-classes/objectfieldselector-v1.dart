import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'objectfieldselector_v1.g.dart';


///ObjectFieldSelector selects an APIVersioned field of an object.
@JsonSerializable()
class ObjectfieldselectorV1 {
    
    ///Version of the schema the FieldPath is written in terms of, defaults to "v1".
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Path of the field to select in the specified API version.
    @JsonKey(name: "fieldPath")
    String? fieldPath;

    ObjectfieldselectorV1({
        this.apiVersion,
        required this.fieldPath,
    });

    factory ObjectfieldselectorV1.fromJson(Map<String, dynamic> json) => _$ObjectfieldselectorV1FromJson(json);

    Map<String, dynamic> toJson() => _$ObjectfieldselectorV1ToJson(this);
}
