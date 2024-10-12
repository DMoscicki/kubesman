import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podfailurepolicyonpodconditionspattern_batch_v1.g.dart';


///PodFailurePolicyOnPodConditionsPattern describes a pattern for matching an actual pod
///condition type.
@JsonSerializable()
class PodfailurepolicyonpodconditionspatternBatchV1 {
    
    ///Specifies the required Pod condition status. To match a pod condition it is required that
    ///the specified status equals the pod condition status. Defaults to True.
    @JsonKey(name: "status")
    String? status;
    
    ///Specifies the required Pod condition type. To match a pod condition it is required that
    ///specified type equals the pod condition type.
    @JsonKey(name: "type")
    String? type;

    PodfailurepolicyonpodconditionspatternBatchV1({
        required this.status,
        required this.type,
    });

    factory PodfailurepolicyonpodconditionspatternBatchV1.fromJson(Map<String, dynamic> json) => _$PodfailurepolicyonpodconditionspatternBatchV1FromJson(json);

    Map<String, dynamic> toJson() => _$PodfailurepolicyonpodconditionspatternBatchV1ToJson(this);
}
