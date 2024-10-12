import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodeselectorrequirement.g.dart';


///A node selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class Nodeselectorrequirement {
    
    ///The label key that the selector applies to.
    @JsonKey(name: "key")
    String? key;
    
    ///Represents a key's relationship to a set of values. Valid operators are In, NotIn,
    ///Exists, DoesNotExist. Gt, and Lt.
    @JsonKey(name: "operator")
    String? nodeselectorrequirementOperator;
    
    ///An array of string values. If the operator is In or NotIn, the values array must be
    ///non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If
    ///the operator is Gt or Lt, the values array must have a single element, which will be
    ///interpreted as an integer. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String?>? values;

    Nodeselectorrequirement({
        required this.key,
        required this.nodeselectorrequirementOperator,
        this.values,
    });

    factory Nodeselectorrequirement.fromJson(Map<String, dynamic> json) => _$NodeselectorrequirementFromJson(json);

    Map<String, dynamic> toJson() => _$NodeselectorrequirementToJson(this);
}
