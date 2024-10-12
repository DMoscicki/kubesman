import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerresizepolicy_v1.g.dart';


///ContainerResizePolicy represents resource resize policy for the container.
@JsonSerializable()
class ContainerresizepolicyV1 {
    
    ///Name of the resource to which this resource resize policy applies. Supported values: cpu,
    ///memory.
    @JsonKey(name: "resourceName")
    String? resourceName;
    
    ///Restart policy to apply when specified resource is resized. If not specified, it defaults
    ///to NotRequired.
    @JsonKey(name: "restartPolicy")
    String? restartPolicy;

    ContainerresizepolicyV1({
        required this.resourceName,
        required this.restartPolicy,
    });

    factory ContainerresizepolicyV1.fromJson(Map<String, dynamic> json) => _$ContainerresizepolicyV1FromJson(json);

    Map<String, dynamic> toJson() => _$ContainerresizepolicyV1ToJson(this);
}
