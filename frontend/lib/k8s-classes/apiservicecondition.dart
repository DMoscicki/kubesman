import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'apiservicecondition.g.dart';


///APIServiceCondition describes the state of an APIService at a particular point
@JsonSerializable()
class Apiservicecondition {
    
    ///Last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///Human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///Unique, one-word, CamelCase reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status is the status of the condition. Can be True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///Type is the type of the condition.
    @JsonKey(name: "type")
    String? type;

    Apiservicecondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Apiservicecondition.fromJson(Map<String, dynamic> json) => _$ApiserviceconditionFromJson(json);

    Map<String, dynamic> toJson() => _$ApiserviceconditionToJson(this);
}
