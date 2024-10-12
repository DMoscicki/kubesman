import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'validatingadmissionpolicystatus_admissionregistration_v1_alpha1.g.dart';


///ValidatingAdmissionPolicyStatus represents the status of a ValidatingAdmissionPolicy.
@JsonSerializable()
class ValidatingadmissionpolicystatusAdmissionregistrationV1Alpha1 {
    
    ///The conditions represent the latest available observations of a policy's current state.
    @JsonKey(name: "conditions")
    List<IoK8SApimachineryPkgApisMetaV1Condition>? conditions;
    
    ///The generation observed by the controller.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///The results of type checking for each expression. Presence of this field indicates the
    ///completion of the type checking.
    @JsonKey(name: "typeChecking")
    IoK8SApiAdmissionregistrationV1Alpha1TypeChecking? typeChecking;

    ValidatingadmissionpolicystatusAdmissionregistrationV1Alpha1({
        this.conditions,
        this.observedGeneration,
        this.typeChecking,
    });

    factory ValidatingadmissionpolicystatusAdmissionregistrationV1Alpha1.fromJson(Map<String, dynamic> json) => _$ValidatingadmissionpolicystatusAdmissionregistrationV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$ValidatingadmissionpolicystatusAdmissionregistrationV1Alpha1ToJson(this);
}


///Condition contains details for one aspect of the current state of this API Resource.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1Condition {
    
    ///lastTransitionTime is the last time the condition transitioned from one status to
    ///another. This should be when the underlying condition changed.  If that is not known,
    ///then using the time when the API field changed is acceptable.
    @JsonKey(name: "lastTransitionTime")
    DateTime lastTransitionTime;
    
    ///message is a human readable message indicating details about the transition. This may be
    ///an empty string.
    @JsonKey(name: "message")
    String message;
    
    ///observedGeneration represents the .metadata.generation that the condition was set based
    ///upon. For instance, if .metadata.generation is currently 12, but the
    ///.status.conditions[x].observedGeneration is 9, the condition is out of date with respect
    ///to the current state of the instance.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///reason contains a programmatic identifier indicating the reason for the condition's last
    ///transition. Producers of specific condition types may define expected values and meanings
    ///for this field, and whether the values are considered a guaranteed API. The value should
    ///be a CamelCase string. This field may not be empty.
    @JsonKey(name: "reason")
    String reason;
    
    ///status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///type of condition in CamelCase or in foo.example.com/CamelCase.
    @JsonKey(name: "type")
    String type;

    IoK8SApimachineryPkgApisMetaV1Condition({
        required this.lastTransitionTime,
        required this.message,
        this.observedGeneration,
        required this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApimachineryPkgApisMetaV1Condition.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(this);
}


///The results of type checking for each expression. Presence of this field indicates the
///completion of the type checking.
///
///TypeChecking contains results of type checking the expressions in the
///ValidatingAdmissionPolicy
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Alpha1TypeChecking {
    
    ///The type checking warnings for each expression.
    @JsonKey(name: "expressionWarnings")
    List<IoK8SApiAdmissionregistrationV1Alpha1ExpressionWarning>? expressionWarnings;

    IoK8SApiAdmissionregistrationV1Alpha1TypeChecking({
        this.expressionWarnings,
    });

    factory IoK8SApiAdmissionregistrationV1Alpha1TypeChecking.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1Alpha1TypeCheckingFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1Alpha1TypeCheckingToJson(this);
}


///ExpressionWarning is a warning information that targets a specific expression.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Alpha1ExpressionWarning {
    
    ///The path to the field that refers the expression. For example, the reference to the
    ///expression of the first item of validations is "spec.validations[0].expression"
    @JsonKey(name: "fieldRef")
    String fieldRef;
    
    ///The content of type checking information in a human-readable form. Each line of the
    ///warning contains the type that the expression is checked against, followed by the type
    ///check error from the compiler.
    @JsonKey(name: "warning")
    String warning;

    IoK8SApiAdmissionregistrationV1Alpha1ExpressionWarning({
        required this.fieldRef,
        required this.warning,
    });

    factory IoK8SApiAdmissionregistrationV1Alpha1ExpressionWarning.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1Alpha1ExpressionWarningFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1Alpha1ExpressionWarningToJson(this);
}
