import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'storageversionmigrationstatus_storagemigration_v1_alpha1.g.dart';


///Status of the storage version migration.
@JsonSerializable()
class StorageversionmigrationstatusStoragemigrationV1Alpha1 {
    
    ///The latest available observations of the migration's current state.
    @JsonKey(name: "conditions")
    List<IoK8SApiStoragemigrationV1Alpha1MigrationCondition>? conditions;
    
    ///ResourceVersion to compare with the GC cache for performing the migration. This is the
    ///current resource version of given group, version and resource when
    ///kube-controller-manager first observes this StorageVersionMigration resource.
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;

    StorageversionmigrationstatusStoragemigrationV1Alpha1({
        this.conditions,
        this.resourceVersion,
    });

    factory StorageversionmigrationstatusStoragemigrationV1Alpha1.fromJson(Map<String, dynamic> json) => _$StorageversionmigrationstatusStoragemigrationV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$StorageversionmigrationstatusStoragemigrationV1Alpha1ToJson(this);
}


///Describes the state of a migration at a certain point.
@JsonSerializable()
class IoK8SApiStoragemigrationV1Alpha1MigrationCondition {
    
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
    String status;
    
    ///Type of the condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiStoragemigrationV1Alpha1MigrationCondition({
        this.lastUpdateTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiStoragemigrationV1Alpha1MigrationCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiStoragemigrationV1Alpha1MigrationConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStoragemigrationV1Alpha1MigrationConditionToJson(this);
}
