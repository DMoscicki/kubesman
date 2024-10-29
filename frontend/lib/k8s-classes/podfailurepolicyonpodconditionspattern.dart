import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podfailurepolicyonpodconditionspattern.g.dart';


///PodFailurePolicyOnPodConditionsPattern describes a pattern for matching an actual pod
///condition type.
@JsonSerializable()
class Podfailurepolicyonpodconditionspattern {
    
    ///Specifies the required Pod condition status. To match a pod condition it is required that
    ///the specified status equals the pod condition status. Defaults to True.
    @JsonKey(name: "status")
    String? status;
    
    ///Specifies the required Pod condition type. To match a pod condition it is required that
    ///specified type equals the pod condition type.
    @JsonKey(name: "type")
    String? type;

    Podfailurepolicyonpodconditionspattern({
        required this.status,
        required this.type,
    });

    factory Podfailurepolicyonpodconditionspattern.fromJson(Map<String, dynamic> json) => _$PodfailurepolicyonpodconditionspatternFromJson(json);

    Map<String, dynamic> toJson() => _$PodfailurepolicyonpodconditionspatternToJson(this);
}
