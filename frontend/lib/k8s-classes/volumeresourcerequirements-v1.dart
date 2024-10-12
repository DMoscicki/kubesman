import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumeresourcerequirements_v1.g.dart';


///VolumeResourceRequirements describes the storage resource requirements for a volume.
@JsonSerializable()
class VolumeresourcerequirementsV1 {
    
    ///Limits describes the maximum amount of compute resources allowed. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "limits")
    Map<String, dynamic>? limits;
    
    ///Requests describes the minimum amount of compute resources required. If Requests is
    ///omitted for a container, it defaults to Limits if that is explicitly specified, otherwise
    ///to an implementation-defined value. Requests cannot exceed Limits. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "requests")
    Map<String, dynamic>? requests;

    VolumeresourcerequirementsV1({
        this.limits,
        this.requests,
    });

    factory VolumeresourcerequirementsV1.fromJson(Map<String, dynamic> json) => _$VolumeresourcerequirementsV1FromJson(json);

    Map<String, dynamic> toJson() => _$VolumeresourcerequirementsV1ToJson(this);
}
