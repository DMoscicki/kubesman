import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'variable_admissionregistration_v1_alpha1.g.dart';


///Variable is the definition of a variable that is used for composition.
@JsonSerializable()
class VariableAdmissionregistrationV1Alpha1 {
    
    ///Expression is the expression that will be evaluated as the value of the variable. The CEL
    ///expression has access to the same identifiers as the CEL expressions in Validation.
    @JsonKey(name: "expression")
    String? expression;
    
    ///Name is the name of the variable. The name must be a valid CEL identifier and unique
    ///among all variables. The variable can be accessed in other expressions through
    ///`variables` For example, if name is "foo", the variable will be available as
    ///`variables.foo`
    @JsonKey(name: "name")
    String? name;

    VariableAdmissionregistrationV1Alpha1({
        required this.expression,
        required this.name,
    });

    factory VariableAdmissionregistrationV1Alpha1.fromJson(Map<String, dynamic> json) => _$VariableAdmissionregistrationV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$VariableAdmissionregistrationV1Alpha1ToJson(this);
}
