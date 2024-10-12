import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerstateterminated_v1.g.dart';


///ContainerStateTerminated is a terminated state of a container.
@JsonSerializable()
class ContainerstateterminatedV1 {
    
    ///Container's ID in the format '<type>://<container_id>'
    @JsonKey(name: "containerID")
    String? containerId;
    
    ///Exit status from the last termination of the container
    @JsonKey(name: "exitCode")
    int? exitCode;
    
    ///Time at which the container last terminated
    @JsonKey(name: "finishedAt")
    DateTime? finishedAt;
    
    ///Message regarding the last termination of the container
    @JsonKey(name: "message")
    String? message;
    
    ///(brief) reason from the last termination of the container
    @JsonKey(name: "reason")
    String? reason;
    
    ///Signal from the last termination of the container
    @JsonKey(name: "signal")
    int? signal;
    
    ///Time at which previous execution of the container started
    @JsonKey(name: "startedAt")
    DateTime? startedAt;

    ContainerstateterminatedV1({
        this.containerId,
        required this.exitCode,
        this.finishedAt,
        this.message,
        this.reason,
        this.signal,
        this.startedAt,
    });

    factory ContainerstateterminatedV1.fromJson(Map<String, dynamic> json) => _$ContainerstateterminatedV1FromJson(json);

    Map<String, dynamic> toJson() => _$ContainerstateterminatedV1ToJson(this);
}
