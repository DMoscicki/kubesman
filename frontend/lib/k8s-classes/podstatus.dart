import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podstatus.g.dart';


///PodStatus represents information about the status of a pod. Status may trail the actual
///state of a system, especially if the node that hosts the pod cannot contact the control
///plane.
@JsonSerializable()
class Podstatus {
    
    ///Current service state of pod. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
    @JsonKey(name: "conditions")
    List<IoK8SApiCoreV1PodCondition>? conditions;
    
    ///The list has one entry per container in the manifest. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
    @JsonKey(name: "containerStatuses")
    List<IoK8SApiCoreV1ContainerStatus>? containerStatuses;
    
    ///Status for any ephemeral containers that have run in this pod.
    @JsonKey(name: "ephemeralContainerStatuses")
    List<IoK8SApiCoreV1ContainerStatus>? ephemeralContainerStatuses;
    
    ///hostIP holds the IP address of the host to which the pod is assigned. Empty if the pod
    ///has not started yet. A pod can be assigned to a node that has a problem in kubelet which
    ///in turns mean that HostIP will not be updated even if there is a node is assigned to pod
    @JsonKey(name: "hostIP")
    String? hostIp;
    
    ///hostIPs holds the IP addresses allocated to the host. If this field is specified, the
    ///first entry must match the hostIP field. This list is empty if the pod has not started
    ///yet. A pod can be assigned to a node that has a problem in kubelet which in turns means
    ///that HostIPs will not be updated even if there is a node is assigned to this pod.
    @JsonKey(name: "hostIPs")
    List<IoK8SApiCoreV1HostIp>? hostIPs;
    
    ///The list has one entry per init container in the manifest. The most recent successful
    ///init container will have ready = true, the most recently started container will have
    ///startTime set. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
    @JsonKey(name: "initContainerStatuses")
    List<IoK8SApiCoreV1ContainerStatus>? initContainerStatuses;
    
    ///A human readable message indicating details about why the pod is in this condition.
    @JsonKey(name: "message")
    String? message;
    
    ///nominatedNodeName is set only when this pod preempts other pods on the node, but it
    ///cannot be scheduled right away as preemption victims receive their graceful termination
    ///periods. This field does not guarantee that the pod will be scheduled on this node.
    ///Scheduler may decide to place the pod elsewhere if other nodes become available sooner.
    ///Scheduler may also decide to give the resources on this node to a higher priority pod
    ///that is created after preemption. As a result, this field may be different than
    ///PodSpec.nodeName when the pod is scheduled.
    @JsonKey(name: "nominatedNodeName")
    String? nominatedNodeName;
    
    ///The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle.
    ///The conditions array, the reason and message fields, and the individual container status
    ///arrays contain more detail about the pod's status. There are five possible phase values:
    ///
    ///Pending: The pod has been accepted by the Kubernetes system, but one or more of the
    ///container images has not been created. This includes time before being scheduled as well
    ///as time spent downloading images over the network, which could take a while. Running: The
    ///pod has been bound to a node, and all of the containers have been created. At least one
    ///container is still running, or is in the process of starting or restarting. Succeeded:
    ///All containers in the pod have terminated in success, and will not be restarted. Failed:
    ///All containers in the pod have terminated, and at least one container has terminated in
    ///failure. The container either exited with non-zero status or was terminated by the
    ///system. Unknown: For some reason the state of the pod could not be obtained, typically
    ///due to an error in communicating with the host of the pod.
    ///
    ///More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase
    @JsonKey(name: "phase")
    String? phase;
    
    ///podIP address allocated to the pod. Routable at least within the cluster. Empty if not
    ///yet allocated.
    @JsonKey(name: "podIP")
    String? podIp;
    
    ///podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th
    ///entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4
    ///and IPv6. This list is empty if no IPs have been allocated yet.
    @JsonKey(name: "podIPs")
    List<IoK8SApiCoreV1PodIp>? podIPs;
    
    ///The Quality of Service (QOS) classification assigned to the pod based on resource
    ///requirements See PodQOSClass type for available QOS classes More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-qos/#quality-of-service-classes
    @JsonKey(name: "qosClass")
    String? qosClass;
    
    ///A brief CamelCase message indicating details about why the pod is in this state. e.g.
    ///'Evicted'
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of resources resize desired for pod's containers. It is empty if no resources
    ///resize is pending. Any changes to container resources will automatically set this to
    ///"Proposed"
    @JsonKey(name: "resize")
    String? resize;
    
    ///Status of resource claims.
    @JsonKey(name: "resourceClaimStatuses")
    List<IoK8SApiCoreV1PodResourceClaimStatus>? resourceClaimStatuses;
    
    ///RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is
    ///before the Kubelet pulled the container image(s) for the pod.
    @JsonKey(name: "startTime")
    DateTime? startTime;

    Podstatus({
        this.conditions,
        this.containerStatuses,
        this.ephemeralContainerStatuses,
        this.hostIp,
        this.hostIPs,
        this.initContainerStatuses,
        this.message,
        this.nominatedNodeName,
        this.phase,
        this.podIp,
        this.podIPs,
        this.qosClass,
        this.reason,
        this.resize,
        this.resourceClaimStatuses,
        this.startTime,
    });

    factory Podstatus.fromJson(Map<String, dynamic> json) => _$PodstatusFromJson(json);

    Map<String, dynamic> toJson() => _$PodstatusToJson(this);
}


///PodCondition contains details for the current condition of this pod.
@JsonSerializable()
class IoK8SApiCoreV1PodCondition {
    
    ///Last time we probed the condition.
    @JsonKey(name: "lastProbeTime")
    DateTime? lastProbeTime;
    
    ///Last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///Human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///Unique, one-word, CamelCase reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status is the status of the condition. Can be True, False, Unknown. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
    @JsonKey(name: "status")
    String status;
    
    ///Type is the type of the condition. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1PodCondition({
        this.lastProbeTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiCoreV1PodCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodConditionToJson(this);
}


///ContainerStatus contains details for the current status of this container.
@JsonSerializable()
class IoK8SApiCoreV1ContainerStatus {
    
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
    String image;
    
    ///ImageID is the image ID of the container's image. The image ID may not match the image ID
    ///of the image used in the PodSpec, as it may have been resolved by the runtime.
    @JsonKey(name: "imageID")
    String imageId;
    
    ///LastTerminationState holds the last termination state of the container to help debug
    ///container crashes and restarts. This field is not populated if the container is still
    ///running and RestartCount is 0.
    @JsonKey(name: "lastState")
    IoK8SApiCoreV1ContainerState? lastState;
    
    ///Name is a DNS_LABEL representing the unique name of the container. Each container in a
    ///pod must have a unique name across all container types. Cannot be updated.
    @JsonKey(name: "name")
    String name;
    
    ///Ready specifies whether the container is currently passing its readiness check. The value
    ///will change as readiness probes keep executing. If no readiness probes are specified,
    ///this field defaults to true once the container is fully started (see Started field).
    ///
    ///The value is typically used to determine whether a container is ready to accept traffic.
    @JsonKey(name: "ready")
    bool ready;
    
    ///Resources represents the compute resource requests and limits that have been successfully
    ///enacted on the running container after it has been started or has been successfully
    ///resized.
    @JsonKey(name: "resources")
    IoK8SApiCoreV1ResourceRequirements? resources;
    
    ///RestartCount holds the number of times the container has been restarted. Kubelet makes an
    ///effort to always increment the value, but there are cases when the state may be lost due
    ///to node restarts and then the value may be reset to 0. The value is never negative.
    @JsonKey(name: "restartCount")
    int restartCount;
    
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

    IoK8SApiCoreV1ContainerStatus({
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

    factory IoK8SApiCoreV1ContainerStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerStatusToJson(this);
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


///HostIP represents a single IP address allocated to the host.
@JsonSerializable()
class IoK8SApiCoreV1HostIp {
    
    ///IP is the IP address assigned to the host
    @JsonKey(name: "ip")
    String? ip;

    IoK8SApiCoreV1HostIp({
        this.ip,
    });

    factory IoK8SApiCoreV1HostIp.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HostIpFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HostIpToJson(this);
}


///PodIP represents a single IP address allocated to the pod.
@JsonSerializable()
class IoK8SApiCoreV1PodIp {
    
    ///IP is the IP address assigned to the pod
    @JsonKey(name: "ip")
    String? ip;

    IoK8SApiCoreV1PodIp({
        this.ip,
    });

    factory IoK8SApiCoreV1PodIp.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodIpFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodIpToJson(this);
}


///PodResourceClaimStatus is stored in the PodStatus for each PodResourceClaim which
///references a ResourceClaimTemplate. It stores the generated name for the corresponding
///ResourceClaim.
@JsonSerializable()
class IoK8SApiCoreV1PodResourceClaimStatus {
    
    ///Name uniquely identifies this resource claim inside the pod. This must match the name of
    ///an entry in pod.spec.resourceClaims, which implies that the string must be a DNS_LABEL.
    @JsonKey(name: "name")
    String name;
    
    ///ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the
    ///namespace of the Pod. It this is unset, then generating a ResourceClaim was not
    ///necessary. The pod.spec.resourceClaims entry can be ignored in this case.
    @JsonKey(name: "resourceClaimName")
    String? resourceClaimName;

    IoK8SApiCoreV1PodResourceClaimStatus({
        required this.name,
        this.resourceClaimName,
    });

    factory IoK8SApiCoreV1PodResourceClaimStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodResourceClaimStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodResourceClaimStatusToJson(this);
}
