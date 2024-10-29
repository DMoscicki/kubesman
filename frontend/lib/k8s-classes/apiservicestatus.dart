import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'apiservicestatus.g.dart';


///APIServiceStatus contains derived information about an API server
@JsonSerializable()
class Apiservicestatus {
    
    ///Current service state of apiService.
    @JsonKey(name: "conditions")
    List<IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition>? conditions;

    Apiservicestatus({
        this.conditions,
    });

    factory Apiservicestatus.fromJson(Map<String, dynamic> json) => _$ApiservicestatusFromJson(json);

    Map<String, dynamic> toJson() => _$ApiservicestatusToJson(this);
}


///APIServiceCondition describes the state of an APIService at a particular point
@JsonSerializable()
class IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition {
    
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
    String status;
    
    ///Type is the type of the condition.
    @JsonKey(name: "type")
    String type;

    IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition.fromJson(Map<String, dynamic> json) => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceConditionToJson(this);
}
