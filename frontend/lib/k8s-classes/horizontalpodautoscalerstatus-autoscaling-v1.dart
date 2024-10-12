import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'horizontalpodautoscalerstatus_autoscaling_v1.g.dart';


///current status of a horizontal pod autoscaler
@JsonSerializable()
class HorizontalpodautoscalerstatusAutoscalingV1 {
    
    ///currentCPUUtilizationPercentage is the current average CPU utilization over all pods,
    ///represented as a percentage of requested CPU, e.g. 70 means that an average pod is using
    ///now 70% of its requested CPU.
    @JsonKey(name: "currentCPUUtilizationPercentage")
    int? currentCpuUtilizationPercentage;
    
    ///currentReplicas is the current number of replicas of pods managed by this autoscaler.
    @JsonKey(name: "currentReplicas")
    int? currentReplicas;
    
    ///desiredReplicas is the  desired number of replicas of pods managed by this autoscaler.
    @JsonKey(name: "desiredReplicas")
    int? desiredReplicas;
    
    ///lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods;
    ///used by the autoscaler to control how often the number of pods is changed.
    @JsonKey(name: "lastScaleTime")
    DateTime? lastScaleTime;
    
    ///observedGeneration is the most recent generation observed by this autoscaler.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;

    HorizontalpodautoscalerstatusAutoscalingV1({
        this.currentCpuUtilizationPercentage,
        required this.currentReplicas,
        required this.desiredReplicas,
        this.lastScaleTime,
        this.observedGeneration,
    });

    factory HorizontalpodautoscalerstatusAutoscalingV1.fromJson(Map<String, dynamic> json) => _$HorizontalpodautoscalerstatusAutoscalingV1FromJson(json);

    Map<String, dynamic> toJson() => _$HorizontalpodautoscalerstatusAutoscalingV1ToJson(this);
}
