import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodeselectorrequirement_v1.g.dart';


///A node selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class NodeselectorrequirementV1 {
    
    ///The label key that the selector applies to.
    @JsonKey(name: "key")
    String? key;
    
    ///Represents a key's relationship to a set of values. Valid operators are In, NotIn,
    ///Exists, DoesNotExist. Gt, and Lt.
    @JsonKey(name: "operator")
    String? nodeselectorrequirementV1Operator;
    
    ///An array of string values. If the operator is In or NotIn, the values array must be
    ///non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If
    ///the operator is Gt or Lt, the values array must have a single element, which will be
    ///interpreted as an integer. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String?>? values;

    NodeselectorrequirementV1({
        required this.key,
        required this.nodeselectorrequirementV1Operator,
        this.values,
    });

    factory NodeselectorrequirementV1.fromJson(Map<String, dynamic> json) => _$NodeselectorrequirementV1FromJson(json);

    Map<String, dynamic> toJson() => _$NodeselectorrequirementV1ToJson(this);
}
