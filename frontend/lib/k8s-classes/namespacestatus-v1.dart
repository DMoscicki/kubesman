import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namespacestatus_v1.g.dart';


///NamespaceStatus is information about the current status of a Namespace.
@JsonSerializable()
class NamespacestatusV1 {
    
    ///Represents the latest available observations of a namespace's current state.
    @JsonKey(name: "conditions")
    List<IoK8SApiCoreV1NamespaceCondition>? conditions;
    
    ///Phase is the current lifecycle phase of the namespace. More info:
    ///https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
    @JsonKey(name: "phase")
    String? phase;

    NamespacestatusV1({
        this.conditions,
        this.phase,
    });

    factory NamespacestatusV1.fromJson(Map<String, dynamic> json) => _$NamespacestatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$NamespacestatusV1ToJson(this);
}


///NamespaceCondition contains details about state of namespace.
@JsonSerializable()
class IoK8SApiCoreV1NamespaceCondition {
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///Type of namespace controller condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1NamespaceCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiCoreV1NamespaceCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NamespaceConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NamespaceConditionToJson(this);
}
