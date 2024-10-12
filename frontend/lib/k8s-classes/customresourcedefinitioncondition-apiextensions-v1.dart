import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'customresourcedefinitioncondition_apiextensions_v1.g.dart';


///CustomResourceDefinitionCondition contains details for the current condition of this pod.
@JsonSerializable()
class CustomresourcedefinitionconditionApiextensionsV1 {
    
    ///lastTransitionTime last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///message is a human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///reason is a unique, one-word, CamelCase reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///status is the status of the condition. Can be True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///type is the type of the condition. Types include Established, NamesAccepted and
    ///Terminating.
    @JsonKey(name: "type")
    String? type;

    CustomresourcedefinitionconditionApiextensionsV1({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory CustomresourcedefinitionconditionApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionconditionApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionconditionApiextensionsV1ToJson(this);
}
