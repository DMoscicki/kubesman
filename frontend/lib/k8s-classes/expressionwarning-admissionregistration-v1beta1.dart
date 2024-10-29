import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'expressionwarning_admissionregistration_v1_beta1.g.dart';


///ExpressionWarning is a warning information that targets a specific expression.
@JsonSerializable()
class ExpressionwarningAdmissionregistrationV1Beta1 {
    
    ///The path to the field that refers the expression. For example, the reference to the
    ///expression of the first item of validations is "spec.validations[0].expression"
    @JsonKey(name: "fieldRef")
    String? fieldRef;
    
    ///The content of type checking information in a human-readable form. Each line of the
    ///warning contains the type that the expression is checked against, followed by the type
    ///check error from the compiler.
    @JsonKey(name: "warning")
    String? warning;

    ExpressionwarningAdmissionregistrationV1Beta1({
        required this.fieldRef,
        required this.warning,
    });

    factory ExpressionwarningAdmissionregistrationV1Beta1.fromJson(Map<String, dynamic> json) => _$ExpressionwarningAdmissionregistrationV1Beta1FromJson(json);

    Map<String, dynamic> toJson() => _$ExpressionwarningAdmissionregistrationV1Beta1ToJson(this);
}
