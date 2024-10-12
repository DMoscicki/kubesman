import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerstate.g.dart';


///ContainerState holds a possible state of container. Only one of its members may be
///specified. If none of them is specified, the default one is ContainerStateWaiting.
@JsonSerializable()
class Containerstate {
    
    ///Details about a running container
    @JsonKey(name: "running")
    IoK8SApiCoreV1ContainerStateRunning? running;
    
    ///Details about a terminated container
    @JsonKey(name: "terminated")
    IoK8SApiCoreV1ContainerStateTerminated? terminated;
    
    ///Details about a waiting container
    @JsonKey(name: "waiting")
    IoK8SApiCoreV1ContainerStateWaiting? waiting;

    Containerstate({
        this.running,
        this.terminated,
        this.waiting,
    });

    factory Containerstate.fromJson(Map<String, dynamic> json) => _$ContainerstateFromJson(json);

    Map<String, dynamic> toJson() => _$ContainerstateToJson(this);
}


///Details about a running container
///
///ContainerStateRunning is a running state of a container.
@JsonSerializable()
class IoK8SApiCoreV1ContainerStateRunning {
    
    ///Time at which the container was last (re-)started
    @JsonKey(name: "startedAt")
    DateTime? startedAt;

    IoK8SApiCoreV1ContainerStateRunning({
        this.startedAt,
    });

    factory IoK8SApiCoreV1ContainerStateRunning.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerStateRunningFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerStateRunningToJson(this);
}


///Details about a terminated container
///
///ContainerStateTerminated is a terminated state of a container.
@JsonSerializable()
class IoK8SApiCoreV1ContainerStateTerminated {
    
    ///Container's ID in the format '<type>://<container_id>'
    @JsonKey(name: "containerID")
    String? containerId;
    
    ///Exit status from the last termination of the container
    @JsonKey(name: "exitCode")
    int exitCode;
    
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

    IoK8SApiCoreV1ContainerStateTerminated({
        this.containerId,
        required this.exitCode,
        this.finishedAt,
        this.message,
        this.reason,
        this.signal,
        this.startedAt,
    });

    factory IoK8SApiCoreV1ContainerStateTerminated.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerStateTerminatedFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerStateTerminatedToJson(this);
}


///Details about a waiting container
///
///ContainerStateWaiting is a waiting state of a container.
@JsonSerializable()
class IoK8SApiCoreV1ContainerStateWaiting {
    
    ///Message regarding why the container is not yet running.
    @JsonKey(name: "message")
    String? message;
    
    ///(brief) reason the container is not yet running.
    @JsonKey(name: "reason")
    String? reason;

    IoK8SApiCoreV1ContainerStateWaiting({
        this.message,
        this.reason,
    });

    factory IoK8SApiCoreV1ContainerStateWaiting.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerStateWaitingFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerStateWaitingToJson(this);
}
