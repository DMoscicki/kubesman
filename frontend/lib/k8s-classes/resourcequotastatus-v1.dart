import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcequotastatus_v1.g.dart';


///ResourceQuotaStatus defines the enforced hard limits and observed use.
@JsonSerializable()
class ResourcequotastatusV1 {
    
    ///Hard is the set of enforced hard limits for each named resource. More info:
    ///https://kubernetes.io/docs/concepts/policy/resource-quotas/
    @JsonKey(name: "hard")
    Map<String, dynamic>? hard;
    
    ///Used is the current observed total usage of the resource in the namespace.
    @JsonKey(name: "used")
    Map<String, dynamic>? used;

    ResourcequotastatusV1({
        this.hard,
        this.used,
    });

    factory ResourcequotastatusV1.fromJson(Map<String, dynamic> json) => _$ResourcequotastatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$ResourcequotastatusV1ToJson(this);
}
