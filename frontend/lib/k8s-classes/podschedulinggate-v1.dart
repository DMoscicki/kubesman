import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podschedulinggate_v1.g.dart';


///PodSchedulingGate is associated to a Pod to guard its scheduling.
@JsonSerializable()
class PodschedulinggateV1 {
    
    ///Name of the scheduling gate. Each scheduling gate must have a unique name field.
    @JsonKey(name: "name")
    String? name;

    PodschedulinggateV1({
        required this.name,
    });

    factory PodschedulinggateV1.fromJson(Map<String, dynamic> json) => _$PodschedulinggateV1FromJson(json);

    Map<String, dynamic> toJson() => _$PodschedulinggateV1ToJson(this);
}
