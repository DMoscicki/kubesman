import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'componentcondition_v1.g.dart';


///Information about the condition of a component.
@JsonSerializable()
class ComponentconditionV1 {
    
    ///Condition error code for a component. For example, a health check error code.
    @JsonKey(name: "error")
    String? error;
    
    ///Message about the condition for a component. For example, information about a health
    ///check.
    @JsonKey(name: "message")
    String? message;
    
    ///Status of the condition for a component. Valid values for "Healthy": "True", "False", or
    ///"Unknown".
    @JsonKey(name: "status")
    String? status;
    
    ///Type of condition for a component. Valid value: "Healthy"
    @JsonKey(name: "type")
    String? type;

    ComponentconditionV1({
        this.error,
        this.message,
        required this.status,
        required this.type,
    });

    factory ComponentconditionV1.fromJson(Map<String, dynamic> json) => _$ComponentconditionV1FromJson(json);

    Map<String, dynamic> toJson() => _$ComponentconditionV1ToJson(this);
}
