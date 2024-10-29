import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'scalestatus_autoscaling_v1.g.dart';


///ScaleStatus represents the current status of a scale subresource.
@JsonSerializable()
class ScalestatusAutoscalingV1 {
    
    ///replicas is the actual number of observed instances of the scaled object.
    @JsonKey(name: "replicas")
    int? replicas;
    
    ///selector is the label query over pods that should match the replicas count. This is same
    ///as the label selector but in the string format to avoid introspection by clients. The
    ///string will be in the same format as the query-param syntax. More info about label
    ///selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
    @JsonKey(name: "selector")
    String? selector;

    ScalestatusAutoscalingV1({
        required this.replicas,
        this.selector,
    });

    factory ScalestatusAutoscalingV1.fromJson(Map<String, dynamic> json) => _$ScalestatusAutoscalingV1FromJson(json);

    Map<String, dynamic> toJson() => _$ScalestatusAutoscalingV1ToJson(this);
}
