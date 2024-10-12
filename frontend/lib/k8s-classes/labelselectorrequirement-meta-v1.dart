import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'labelselectorrequirement_meta_v1.g.dart';


///A label selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class LabelselectorrequirementMetaV1 {
    
    ///key is the label key that the selector applies to.
    @JsonKey(name: "key")
    String? key;
    
    ///operator represents a key's relationship to a set of values. Valid operators are In,
    ///NotIn, Exists and DoesNotExist.
    @JsonKey(name: "operator")
    String? labelselectorrequirementMetaV1Operator;
    
    ///values is an array of string values. If the operator is In or NotIn, the values array
    ///must be non-empty. If the operator is Exists or DoesNotExist, the values array must be
    ///empty. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String?>? values;

    LabelselectorrequirementMetaV1({
        required this.key,
        required this.labelselectorrequirementMetaV1Operator,
        this.values,
    });

    factory LabelselectorrequirementMetaV1.fromJson(Map<String, dynamic> json) => _$LabelselectorrequirementMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$LabelselectorrequirementMetaV1ToJson(this);
}
