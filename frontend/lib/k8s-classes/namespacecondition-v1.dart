import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namespacecondition_v1.g.dart';


///NamespaceCondition contains details about state of namespace.
@JsonSerializable()
class NamespaceconditionV1 {
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///Type of namespace controller condition.
    @JsonKey(name: "type")
    String? type;

    NamespaceconditionV1({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory NamespaceconditionV1.fromJson(Map<String, dynamic> json) => _$NamespaceconditionV1FromJson(json);

    Map<String, dynamic> toJson() => _$NamespaceconditionV1ToJson(this);
}
