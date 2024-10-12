import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'expressionwarning.g.dart';


///ExpressionWarning is a warning information that targets a specific expression.
@JsonSerializable()
class Expressionwarning {
    
    ///The path to the field that refers the expression. For example, the reference to the
    ///expression of the first item of validations is "spec.validations[0].expression"
    @JsonKey(name: "fieldRef")
    String? fieldRef;
    
    ///The content of type checking information in a human-readable form. Each line of the
    ///warning contains the type that the expression is checked against, followed by the type
    ///check error from the compiler.
    @JsonKey(name: "warning")
    String? warning;

    Expressionwarning({
        required this.fieldRef,
        required this.warning,
    });

    factory Expressionwarning.fromJson(Map<String, dynamic> json) => _$ExpressionwarningFromJson(json);

    Map<String, dynamic> toJson() => _$ExpressionwarningToJson(this);
}
