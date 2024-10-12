import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'scalespec_autoscaling_v1.g.dart';


///ScaleSpec describes the attributes of a scale subresource.
@JsonSerializable()
class ScalespecAutoscalingV1 {
    
    ///replicas is the desired number of instances for the scaled object.
    @JsonKey(name: "replicas")
    int? replicas;

    ScalespecAutoscalingV1({
        this.replicas,
    });

    factory ScalespecAutoscalingV1.fromJson(Map<String, dynamic> json) => _$ScalespecAutoscalingV1FromJson(json);

    Map<String, dynamic> toJson() => _$ScalespecAutoscalingV1ToJson(this);
}
