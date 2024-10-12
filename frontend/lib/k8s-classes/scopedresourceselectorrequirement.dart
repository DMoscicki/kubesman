import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'scopedresourceselectorrequirement.g.dart';


///A scoped-resource selector requirement is a selector that contains values, a scope name,
///and an operator that relates the scope name and values.
@JsonSerializable()
class Scopedresourceselectorrequirement {
    
    ///Represents a scope's relationship to a set of values. Valid operators are In, NotIn,
    ///Exists, DoesNotExist.
    @JsonKey(name: "operator")
    String? scopedresourceselectorrequirementOperator;
    
    ///The name of the scope that the selector applies to.
    @JsonKey(name: "scopeName")
    String? scopeName;
    
    ///An array of string values. If the operator is In or NotIn, the values array must be
    ///non-empty. If the operator is Exists or DoesNotExist, the values array must be empty.
    ///This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String?>? values;

    Scopedresourceselectorrequirement({
        required this.scopedresourceselectorrequirementOperator,
        required this.scopeName,
        this.values,
    });

    factory Scopedresourceselectorrequirement.fromJson(Map<String, dynamic> json) => _$ScopedresourceselectorrequirementFromJson(json);

    Map<String, dynamic> toJson() => _$ScopedresourceselectorrequirementToJson(this);
}
