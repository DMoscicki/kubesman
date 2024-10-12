import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'migrationcondition_storagemigration_v1_alpha1.g.dart';


///Describes the state of a migration at a certain point.
@JsonSerializable()
class MigrationconditionStoragemigrationV1Alpha1 {
    
    ///The last time this condition was updated.
    @JsonKey(name: "lastUpdateTime")
    DateTime? lastUpdateTime;
    
    ///A human readable message indicating details about the transition.
    @JsonKey(name: "message")
    String? message;
    
    ///The reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///Type of the condition.
    @JsonKey(name: "type")
    String? type;

    MigrationconditionStoragemigrationV1Alpha1({
        this.lastUpdateTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory MigrationconditionStoragemigrationV1Alpha1.fromJson(Map<String, dynamic> json) => _$MigrationconditionStoragemigrationV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$MigrationconditionStoragemigrationV1Alpha1ToJson(this);
}
