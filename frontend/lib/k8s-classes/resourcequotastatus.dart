import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcequotastatus.g.dart';


///ResourceQuotaStatus defines the enforced hard limits and observed use.
@JsonSerializable()
class Resourcequotastatus {
    
    ///Hard is the set of enforced hard limits for each named resource. More info:
    ///https://kubernetes.io/docs/concepts/policy/resource-quotas/
    @JsonKey(name: "hard")
    Map<String, dynamic>? hard;
    
    ///Used is the current observed total usage of the resource in the namespace.
    @JsonKey(name: "used")
    Map<String, dynamic>? used;

    Resourcequotastatus({
        this.hard,
        this.used,
    });

    factory Resourcequotastatus.fromJson(Map<String, dynamic> json) => _$ResourcequotastatusFromJson(json);

    Map<String, dynamic> toJson() => _$ResourcequotastatusToJson(this);
}
