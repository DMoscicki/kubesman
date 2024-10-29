import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'condition_meta_v1.g.dart';


///Condition contains details for one aspect of the current state of this API Resource.
@JsonSerializable()
class ConditionMetaV1 {
    
    ///lastTransitionTime is the last time the condition transitioned from one status to
    ///another. This should be when the underlying condition changed.  If that is not known,
    ///then using the time when the API field changed is acceptable.
    @JsonKey(name: "lastTransitionTime")
    DateTime lastTransitionTime;
    
    ///message is a human readable message indicating details about the transition. This may be
    ///an empty string.
    @JsonKey(name: "message")
    String? message;
    
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
    String? reason;
    
    ///status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///type of condition in CamelCase or in foo.example.com/CamelCase.
    @JsonKey(name: "type")
    String? type;

    ConditionMetaV1({
        required this.lastTransitionTime,
        required this.message,
        this.observedGeneration,
        required this.reason,
        required this.status,
        required this.type,
    });

    factory ConditionMetaV1.fromJson(Map<String, dynamic> json) => _$ConditionMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$ConditionMetaV1ToJson(this);
}
