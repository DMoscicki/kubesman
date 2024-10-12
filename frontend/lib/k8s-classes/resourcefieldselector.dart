import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcefieldselector.g.dart';


///ResourceFieldSelector represents container resources (cpu, memory) and their output format
@JsonSerializable()
class Resourcefieldselector {
    
    ///Container name: required for volumes, optional for env vars
    @JsonKey(name: "containerName")
    String? containerName;
    
    ///Specifies the output format of the exposed resources, defaults to "1"
    @JsonKey(name: "divisor")
    dynamic divisor;
    
    ///Required: resource to select
    @JsonKey(name: "resource")
    String? resource;

    Resourcefieldselector({
        this.containerName,
        this.divisor,
        required this.resource,
    });

    factory Resourcefieldselector.fromJson(Map<String, dynamic> json) => _$ResourcefieldselectorFromJson(json);

    Map<String, dynamic> toJson() => _$ResourcefieldselectorToJson(this);
}
