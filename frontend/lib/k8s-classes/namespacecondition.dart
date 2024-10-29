import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namespacecondition.g.dart';


///NamespaceCondition contains details about state of namespace.
@JsonSerializable()
class Namespacecondition {
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

    Namespacecondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Namespacecondition.fromJson(Map<String, dynamic> json) => _$NamespaceconditionFromJson(json);

    Map<String, dynamic> toJson() => _$NamespaceconditionToJson(this);
}
