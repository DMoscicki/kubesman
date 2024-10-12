import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'typechecking.g.dart';


///TypeChecking contains results of type checking the expressions in the
///ValidatingAdmissionPolicy
@JsonSerializable()
class Typechecking {
    
    ///The type checking warnings for each expression.
    @JsonKey(name: "expressionWarnings")
    List<IoK8SApiAdmissionregistrationV1Beta1ExpressionWarning>? expressionWarnings;

    Typechecking({
        this.expressionWarnings,
    });

    factory Typechecking.fromJson(Map<String, dynamic> json) => _$TypecheckingFromJson(json);

    Map<String, dynamic> toJson() => _$TypecheckingToJson(this);
}


///ExpressionWarning is a warning information that targets a specific expression.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Beta1ExpressionWarning {
    
    ///The path to the field that refers the expression. For example, the reference to the
    ///expression of the first item of validations is "spec.validations[0].expression"
    @JsonKey(name: "fieldRef")
    String fieldRef;
    
    ///The content of type checking information in a human-readable form. Each line of the
    ///warning contains the type that the expression is checked against, followed by the type
    ///check error from the compiler.
    @JsonKey(name: "warning")
    String warning;

    IoK8SApiAdmissionregistrationV1Beta1ExpressionWarning({
        required this.fieldRef,
        required this.warning,
    });

    factory IoK8SApiAdmissionregistrationV1Beta1ExpressionWarning.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1Beta1ExpressionWarningFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1Beta1ExpressionWarningToJson(this);
}
