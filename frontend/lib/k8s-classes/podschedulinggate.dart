import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podschedulinggate.g.dart';


///PodSchedulingGate is associated to a Pod to guard its scheduling.
@JsonSerializable()
class Podschedulinggate {
    
    ///Name of the scheduling gate. Each scheduling gate must have a unique name field.
    @JsonKey(name: "name")
    String? name;

    Podschedulinggate({
        required this.name,
    });

    factory Podschedulinggate.fromJson(Map<String, dynamic> json) => _$PodschedulinggateFromJson(json);

    Map<String, dynamic> toJson() => _$PodschedulinggateToJson(this);
}
