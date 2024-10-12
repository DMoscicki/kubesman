import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerstatus_v1.g.dart';


///ContainerStatus contains details for the current status of this container.
@JsonSerializable()
class ContainerstatusV1 {
    
    ///AllocatedResources represents the compute resources allocated for this container by the
    ///node. Kubelet sets this value to Container.Resources.Requests upon successful pod
    ///admission and after successfully admitting desired pod resize.
    @JsonKey(name: "allocatedResources")
    Map<String, dynamic>? allocatedResources;
    
    ///ContainerID is the ID of the container in the format '<type>://<container_id>'. Where
    ///type is a container runtime identifier, returned from Version call of CRI API (for
    ///example "containerd").
    @JsonKey(name: "containerID")
    String? containerId;
    
    ///Image is the name of container image that the container is running. The container image
    ///may not match the image used in the PodSpec, as it may have been resolved by the runtime.
    ///More info: https://kubernetes.io/docs/concepts/containers/images.
    @JsonKey(name: "image")
    String? image;
    
    ///ImageID is the image ID of the container's image. The image ID may not match the image ID
    ///of the image used in the PodSpec, as it may have been resolved by the runtime.
    @JsonKey(name: "imageID")
    String? imageId;
    
    ///LastTerminationState holds the last termination state of the container to help debug
    ///container crashes and restarts. This field is not populated if the container is still
    ///running and RestartCount is 0.
    @JsonKey(name: "lastState")
    IoK8SApiCoreV1ContainerState? lastState;
    
    ///Name is a DNS_LABEL representing the unique name of the container. Each container in a
    ///pod must have a unique name across all container types. Cannot be updated.
    @JsonKey(name: "name")
    String? name;
    
    ///Ready specifies whether the container is currently passing its readiness check. The value
    ///will change as readiness probes keep executing. If no readiness probes are specified,
    ///this field defaults to true once the container is fully started (see Started field).
    ///
    ///The value is typically used to determine whether a container is ready to accept traffic.
    @JsonKey(name: "ready")
    bool? ready;
    
    ///Resources represents the compute resource requests and limits that have been successfully
    ///enacted on the running container after it has been started or has been successfully
    ///resized.
    @JsonKey(name: "resources")
    IoK8SApiCoreV1ResourceRequirements? resources;
    
    ///RestartCount holds the number of times the container has been restarted. Kubelet makes an
    ///effort to always increment the value, but there are cases when the state may be lost due
    ///to node restarts and then the value may be reset to 0. The value is never negative.
    @JsonKey(name: "restartCount")
    int? restartCount;
    
    ///Started indicates whether the container has finished its postStart lifecycle hook and
    ///passed its startup probe. Initialized as false, becomes true after startupProbe is
    ///considered successful. Resets to false when the container is restarted, or if kubelet
    ///loses state temporarily. In both cases, startup probes will run again. Is always true
    ///when no startupProbe is defined and container is running and has passed the postStart
    ///lifecycle hook. The null value must be treated the same as false.
    @JsonKey(name: "started")
    bool? started;
    
    ///State holds details about the container's current condition.
    @JsonKey(name: "state")
    IoK8SApiCoreV1ContainerState? state;
    
    ///Status of volume mounts.
    @JsonKey(name: "volumeMounts")
    List<IoK8SApiCoreV1VolumeMountStatus>? volumeMounts;

    ContainerstatusV1({
        this.allocatedResources,
        this.containerId,
        required this.image,
        required this.imageId,
        this.lastState,
        required this.name,
        required this.ready,
        this.resources,
        required this.restartCount,
        this.started,
        this.state,
        this.volumeMounts,
    });

    factory ContainerstatusV1.fromJson(Map<String, dynamic> json) => _$ContainerstatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$ContainerstatusV1ToJson(this);
}


///LastTerminationState holds the last termination state of the container to help debug
///container crashes and restarts. This field is not populated if the container is still
///running and RestartCount is 0.
///
///ContainerState holds a possible state of container. Only one of its members may be
///specified. If none of them is specified, the default one is ContainerStateWaiting.
///
///State holds details about the container's current condition.
@JsonSerializable()
class IoK8SApiCoreV1ContainerState {
    
    ///Details about a running container
    @JsonKey(name: "running")
    IoK8SApiCoreV1ContainerStateRunning? running;
    
    ///Details about a terminated container
    @JsonKey(name: "terminated")
    IoK8SApiCoreV1ContainerStateTerminated? terminated;
    
    ///Details about a waiting container
    @JsonKey(name: "waiting")
    IoK8SApiCoreV1ContainerStateWaiting? waiting;

    IoK8SApiCoreV1ContainerState({
        this.running,
        this.terminated,
        this.waiting,
    });

    factory IoK8SApiCoreV1ContainerState.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerStateFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerStateToJson(this);
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


///Resources represents the compute resource requests and limits that have been successfully
///enacted on the running container after it has been started or has been successfully
///resized.
///
///ResourceRequirements describes the compute resource requirements.
@JsonSerializable()
class IoK8SApiCoreV1ResourceRequirements {
    
    ///Claims lists the names of resources, defined in spec.resourceClaims, that are used by
    ///this container.
    ///
    ///This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
    ///
    ///This field is immutable. It can only be set for containers.
    @JsonKey(name: "claims")
    List<IoK8SApiCoreV1ResourceClaim>? claims;
    
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

    IoK8SApiCoreV1ResourceRequirements({
        this.claims,
        this.limits,
        this.requests,
    });

    factory IoK8SApiCoreV1ResourceRequirements.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceRequirementsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceRequirementsToJson(this);
}


///ResourceClaim references one entry in PodSpec.ResourceClaims.
@JsonSerializable()
class IoK8SApiCoreV1ResourceClaim {
    
    ///Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this
    ///field is used. It makes that resource available inside a container.
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1ResourceClaim({
        required this.name,
    });

    factory IoK8SApiCoreV1ResourceClaim.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceClaimFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceClaimToJson(this);
}


///VolumeMountStatus shows status of volume mounts.
@JsonSerializable()
class IoK8SApiCoreV1VolumeMountStatus {
    
    ///MountPath corresponds to the original VolumeMount.
    @JsonKey(name: "mountPath")
    String mountPath;
    
    ///Name corresponds to the name of the original VolumeMount.
    @JsonKey(name: "name")
    String name;
    
    ///ReadOnly corresponds to the original VolumeMount.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly
    ///mounts). An IfPossible value in the original VolumeMount must be translated to Disabled
    ///or Enabled, depending on the mount result.
    @JsonKey(name: "recursiveReadOnly")
    String? recursiveReadOnly;

    IoK8SApiCoreV1VolumeMountStatus({
        required this.mountPath,
        required this.name,
        this.readOnly,
        this.recursiveReadOnly,
    });

    factory IoK8SApiCoreV1VolumeMountStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeMountStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeMountStatusToJson(this);
}
