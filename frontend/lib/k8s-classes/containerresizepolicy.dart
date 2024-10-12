import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerresizepolicy.g.dart';


///ContainerResizePolicy represents resource resize policy for the container.
@JsonSerializable()
class Containerresizepolicy {
    
    ///Name of the resource to which this resource resize policy applies. Supported values: cpu,
    ///memory.
    @JsonKey(name: "resourceName")
    String? resourceName;
    
    ///Restart policy to apply when specified resource is resized. If not specified, it defaults
    ///to NotRequired.
    @JsonKey(name: "restartPolicy")
    String? restartPolicy;

    Containerresizepolicy({
        required this.resourceName,
        required this.restartPolicy,
    });

    factory Containerresizepolicy.fromJson(Map<String, dynamic> json) => _$ContainerresizepolicyFromJson(json);

    Map<String, dynamic> toJson() => _$ContainerresizepolicyToJson(this);
}
