import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'crossversionobjectreference_autoscaling_v1.g.dart';


///CrossVersionObjectReference contains enough information to let you identify the referred
///resource.
@JsonSerializable()
class CrossversionobjectreferenceAutoscalingV1 {
    
    ///apiVersion is the API version of the referent
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///kind is the kind of the referent; More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String? kind;
    
    ///name is the name of the referent; More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;

    CrossversionobjectreferenceAutoscalingV1({
        this.apiVersion,
        required this.kind,
        required this.name,
    });

    factory CrossversionobjectreferenceAutoscalingV1.fromJson(Map<String, dynamic> json) => _$CrossversionobjectreferenceAutoscalingV1FromJson(json);

    Map<String, dynamic> toJson() => _$CrossversionobjectreferenceAutoscalingV1ToJson(this);
}
