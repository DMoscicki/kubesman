import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'horizontalpodautoscalerspec_autoscaling_v1.g.dart';


///specification of a horizontal pod autoscaler.
@JsonSerializable()
class HorizontalpodautoscalerspecAutoscalingV1 {
    
    ///maxReplicas is the upper limit for the number of pods that can be set by the autoscaler;
    ///cannot be smaller than MinReplicas.
    @JsonKey(name: "maxReplicas")
    int? maxReplicas;
    
    ///minReplicas is the lower limit for the number of replicas to which the autoscaler can
    ///scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature
    ///gate HPAScaleToZero is enabled and at least one Object or External metric is configured.
    ///Scaling is active as long as at least one metric value is available.
    @JsonKey(name: "minReplicas")
    int? minReplicas;
    
    ///reference to scaled resource; horizontal pod autoscaler will learn the current resource
    ///consumption and will set the desired number of pods by using its Scale subresource.
    @JsonKey(name: "scaleTargetRef")
    IoK8SApiAutoscalingV1CrossVersionObjectReference scaleTargetRef;
    
    ///targetCPUUtilizationPercentage is the target average CPU utilization (represented as a
    ///percentage of requested CPU) over all the pods; if not specified the default autoscaling
    ///policy will be used.
    @JsonKey(name: "targetCPUUtilizationPercentage")
    int? targetCpuUtilizationPercentage;

    HorizontalpodautoscalerspecAutoscalingV1({
        required this.maxReplicas,
        this.minReplicas,
        required this.scaleTargetRef,
        this.targetCpuUtilizationPercentage,
    });

    factory HorizontalpodautoscalerspecAutoscalingV1.fromJson(Map<String, dynamic> json) => _$HorizontalpodautoscalerspecAutoscalingV1FromJson(json);

    Map<String, dynamic> toJson() => _$HorizontalpodautoscalerspecAutoscalingV1ToJson(this);
}


///reference to scaled resource; horizontal pod autoscaler will learn the current resource
///consumption and will set the desired number of pods by using its Scale subresource.
///
///CrossVersionObjectReference contains enough information to let you identify the referred
///resource.
@JsonSerializable()
class IoK8SApiAutoscalingV1CrossVersionObjectReference {
    
    ///apiVersion is the API version of the referent
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///kind is the kind of the referent; More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String kind;
    
    ///name is the name of the referent; More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String name;

    IoK8SApiAutoscalingV1CrossVersionObjectReference({
        this.apiVersion,
        required this.kind,
        required this.name,
    });

    factory IoK8SApiAutoscalingV1CrossVersionObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV1CrossVersionObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV1CrossVersionObjectReferenceToJson(this);
}
