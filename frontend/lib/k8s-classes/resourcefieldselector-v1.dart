import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcefieldselector_v1.g.dart';


///ResourceFieldSelector represents container resources (cpu, memory) and their output format
@JsonSerializable()
class ResourcefieldselectorV1 {
    
    ///Container name: required for volumes, optional for env vars
    @JsonKey(name: "containerName")
    String? containerName;
    
    ///Specifies the output format of the exposed resources, defaults to "1"
    @JsonKey(name: "divisor")
    dynamic divisor;
    
    ///Required: resource to select
    @JsonKey(name: "resource")
    String? resource;

    ResourcefieldselectorV1({
        this.containerName,
        this.divisor,
        required this.resource,
    });

    factory ResourcefieldselectorV1.fromJson(Map<String, dynamic> json) => _$ResourcefieldselectorV1FromJson(json);

    Map<String, dynamic> toJson() => _$ResourcefieldselectorV1ToJson(this);
}
