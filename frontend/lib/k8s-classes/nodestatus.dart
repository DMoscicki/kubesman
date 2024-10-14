import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodestatus.g.dart';


///NodeStatus is information about the current status of a node.
@JsonSerializable()
class Nodestatus {
    
    ///List of addresses reachable to the node. Queried from cloud provider, if available. More
    ///info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is
    ///declared as mergeable, but the merge key is not sufficiently unique, which can cause data
    ///corruption when it is merged. Callers should instead use a full-replacement patch. See
    ///https://pr.k8s.io/79391 for an example. Consumers should assume that addresses can change
    ///during the lifetime of a Node. However, there are some exceptions where this may not be
    ///possible, such as Pods that inherit a Node's address in its own status or consumers of
    ///the downward API (status.hostIP).
    @JsonKey(name: "addresses")
    List<IoK8SApiCoreV1NodeAddress>? addresses;
    
    ///Allocatable represents the resources of a node that are available for scheduling.
    ///Defaults to Capacity.
    @JsonKey(name: "allocatable")
    Map<String, dynamic>? allocatable;
    
    ///Capacity represents the total resources of a node. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
    @JsonKey(name: "capacity")
    Map<String, dynamic>? capacity;
    
    ///Conditions is an array of current observed node conditions. More info:
    ///https://kubernetes.io/docs/concepts/nodes/node/#condition
    @JsonKey(name: "conditions")
    List<IoK8SApiCoreV1NodeCondition>? conditions;
    
    ///Status of the config assigned to the node via the dynamic Kubelet config feature.
    @JsonKey(name: "config")
    IoK8SApiCoreV1NodeConfigStatus? config;
    
    ///Endpoints of daemons running on the Node.
    @JsonKey(name: "daemonEndpoints")
    IoK8SApiCoreV1NodeDaemonEndpoints? daemonEndpoints;
    
    ///List of container images on this node
    @JsonKey(name: "images")
    List<IoK8SApiCoreV1ContainerImage>? images;
    
    ///Set of ids/uuids to uniquely identify the node. More info:
    ///https://kubernetes.io/docs/concepts/nodes/node/#info
    @JsonKey(name: "nodeInfo")
    IoK8SApiCoreV1NodeSystemInfo? nodeInfo;
    
    ///NodePhase is the recently observed lifecycle phase of the node. More info:
    ///https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and
    ///now is deprecated.
    @JsonKey(name: "phase")
    String? phase;
    
    ///The available runtime handlers.
    @JsonKey(name: "runtimeHandlers")
    List<IoK8SApiCoreV1NodeRuntimeHandler>? runtimeHandlers;
    
    ///List of volumes that are attached to the node.
    @JsonKey(name: "volumesAttached")
    List<IoK8SApiCoreV1AttachedVolume>? volumesAttached;
    
    ///List of attachable volumes in use (mounted) by the node.
    @JsonKey(name: "volumesInUse")
    List<String?>? volumesInUse;

    Nodestatus({
        this.addresses,
        this.allocatable,
        this.capacity,
        this.conditions,
        this.config,
        this.daemonEndpoints,
        this.images,
        this.nodeInfo,
        this.phase,
        this.runtimeHandlers,
        this.volumesAttached,
        this.volumesInUse,
    });

    factory Nodestatus.fromJson(Map<String, dynamic> json) => _$NodestatusFromJson(json);

    Map<String, dynamic> toJson() => _$NodestatusToJson(this);
}


///NodeAddress contains information for the node's address.
@JsonSerializable()
class IoK8SApiCoreV1NodeAddress {
    
    ///The node address.
    @JsonKey(name: "address")
    String address;
    
    ///Node address type, one of Hostname, ExternalIP or InternalIP.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1NodeAddress({
        required this.address,
        required this.type,
    });

    factory IoK8SApiCoreV1NodeAddress.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeAddressFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeAddressToJson(this);
}


///NodeCondition contains condition information for a node.
@JsonSerializable()
class IoK8SApiCoreV1NodeCondition {
    
    ///Last time we got an update on a given condition.
    @JsonKey(name: "lastHeartbeatTime")
    DateTime? lastHeartbeatTime;
    
    ///Last time the condition transit from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///Human readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///(brief) reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///Type of node condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1NodeCondition({
        this.lastHeartbeatTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiCoreV1NodeCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeConditionToJson(this);
}


///Status of the config assigned to the node via the dynamic Kubelet config feature.
///
///NodeConfigStatus describes the status of the config assigned by Node.Spec.ConfigSource.
@JsonSerializable()
class IoK8SApiCoreV1NodeConfigStatus {
    
    ///Active reports the checkpointed config the node is actively using. Active will represent
    ///either the current version of the Assigned config, or the current LastKnownGood config,
    ///depending on whether attempting to use the Assigned config results in an error.
    @JsonKey(name: "active")
    IoK8SApiCoreV1NodeConfigSource? active;
    
    ///Assigned reports the checkpointed config the node will try to use. When
    ///Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to
    ///local disk, along with a record indicating intended config. The node refers to this
    ///record to choose its config checkpoint, and reports this record in Assigned. Assigned
    ///only updates in the status after the record has been checkpointed to disk. When the
    ///Kubelet is restarted, it tries to make the Assigned config the Active config by loading
    ///and validating the checkpointed payload identified by Assigned.
    @JsonKey(name: "assigned")
    IoK8SApiCoreV1NodeConfigSource? assigned;
    
    ///Error describes any problems reconciling the Spec.ConfigSource to the Active config.
    ///Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local
    ///Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource,
    ///attempting to load or validate the Assigned config, etc. Errors may occur at different
    ///points while syncing config. Earlier errors (e.g. download or checkpointing errors) will
    ///not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later
    ///errors (e.g. loading or validating a checkpointed config) will result in a rollback to
    ///LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing
    ///the config assigned in Spec.ConfigSource. You can find additional information for
    ///debugging by searching the error message in the Kubelet log. Error is a human-readable
    ///description of the error state; machines can check whether or not Error is empty, but
    ///should not rely on the stability of the Error text across Kubelet versions.
    @JsonKey(name: "error")
    String? error;
    
    ///LastKnownGood reports the checkpointed config the node will fall back to when it
    ///encounters an error attempting to use the Assigned config. The Assigned config becomes
    ///the LastKnownGood config when the node determines that the Assigned config is stable and
    ///correct. This is currently implemented as a 10-minute soak period starting when the local
    ///record of Assigned config is updated. If the Assigned config is Active at the end of this
    ///period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use
    ///local defaults), the LastKnownGood is also immediately reset to nil, because the local
    ///default config is always assumed good. You should not make assumptions about the node's
    ///method of determining config stability and correctness, as this may change or become
    ///configurable in the future.
    @JsonKey(name: "lastKnownGood")
    IoK8SApiCoreV1NodeConfigSource? lastKnownGood;

    IoK8SApiCoreV1NodeConfigStatus({
        this.active,
        this.assigned,
        this.error,
        this.lastKnownGood,
    });

    factory IoK8SApiCoreV1NodeConfigStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeConfigStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeConfigStatusToJson(this);
}


///Active reports the checkpointed config the node is actively using. Active will represent
///either the current version of the Assigned config, or the current LastKnownGood config,
///depending on whether attempting to use the Assigned config results in an error.
///
///NodeConfigSource specifies a source of node configuration. Exactly one subfield
///(excluding metadata) must be non-nil. This API is deprecated since 1.22
///
///Assigned reports the checkpointed config the node will try to use. When
///Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to
///local disk, along with a record indicating intended config. The node refers to this
///record to choose its config checkpoint, and reports this record in Assigned. Assigned
///only updates in the status after the record has been checkpointed to disk. When the
///Kubelet is restarted, it tries to make the Assigned config the Active config by loading
///and validating the checkpointed payload identified by Assigned.
///
///LastKnownGood reports the checkpointed config the node will fall back to when it
///encounters an error attempting to use the Assigned config. The Assigned config becomes
///the LastKnownGood config when the node determines that the Assigned config is stable and
///correct. This is currently implemented as a 10-minute soak period starting when the local
///record of Assigned config is updated. If the Assigned config is Active at the end of this
///period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use
///local defaults), the LastKnownGood is also immediately reset to nil, because the local
///default config is always assumed good. You should not make assumptions about the node's
///method of determining config stability and correctness, as this may change or become
///configurable in the future.
@JsonSerializable()
class IoK8SApiCoreV1NodeConfigSource {
    
    ///ConfigMap is a reference to a Node's ConfigMap
    @JsonKey(name: "configMap")
    IoK8SApiCoreV1ConfigMapNodeConfigSource? configMap;

    IoK8SApiCoreV1NodeConfigSource({
        this.configMap,
    });

    factory IoK8SApiCoreV1NodeConfigSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeConfigSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeConfigSourceToJson(this);
}


///ConfigMap is a reference to a Node's ConfigMap
///
///ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config
///source for the Node. This API is deprecated since 1.22:
///https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapNodeConfigSource {
    
    ///KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the
    ///KubeletConfiguration structure This field is required in all cases.
    @JsonKey(name: "kubeletConfigKey")
    String kubeletConfigKey;
    
    ///Name is the metadata.name of the referenced ConfigMap. This field is required in all
    ///cases.
    @JsonKey(name: "name")
    String name;
    
    ///Namespace is the metadata.namespace of the referenced ConfigMap. This field is required
    ///in all cases.
    @JsonKey(name: "namespace")
    String namespace;
    
    ///ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field
    ///is forbidden in Node.Spec, and required in Node.Status.
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in
    ///Node.Spec, and required in Node.Status.
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApiCoreV1ConfigMapNodeConfigSource({
        required this.kubeletConfigKey,
        required this.name,
        required this.namespace,
        this.resourceVersion,
        this.uid,
    });

    factory IoK8SApiCoreV1ConfigMapNodeConfigSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapNodeConfigSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapNodeConfigSourceToJson(this);
}


///Endpoints of daemons running on the Node.
///
///NodeDaemonEndpoints lists ports opened by daemons running on the Node.
@JsonSerializable()
class IoK8SApiCoreV1NodeDaemonEndpoints {
    
    ///Endpoint on which Kubelet is listening.
    @JsonKey(name: "kubeletEndpoint")
    IoK8SApiCoreV1DaemonEndpoint? kubeletEndpoint;

    IoK8SApiCoreV1NodeDaemonEndpoints({
        this.kubeletEndpoint,
    });

    factory IoK8SApiCoreV1NodeDaemonEndpoints.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeDaemonEndpointsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeDaemonEndpointsToJson(this);
}


///Endpoint on which Kubelet is listening.
///
///DaemonEndpoint contains information about a single Daemon endpoint.
@JsonSerializable()
class IoK8SApiCoreV1DaemonEndpoint {
    
    ///Port number of the given endpoint.
    @JsonKey(name: "Port")
    int port;

    IoK8SApiCoreV1DaemonEndpoint({
        required this.port,
    });

    factory IoK8SApiCoreV1DaemonEndpoint.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DaemonEndpointFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DaemonEndpointToJson(this);
}


///Describe a container image
@JsonSerializable()
class IoK8SApiCoreV1ContainerImage {
    
    ///Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7",
    ///"cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
    @JsonKey(name: "names")
    List<String>? names;
    
    ///The size of the image in bytes.
    @JsonKey(name: "sizeBytes")
    int? sizeBytes;

    IoK8SApiCoreV1ContainerImage({
        this.names,
        this.sizeBytes,
    });

    factory IoK8SApiCoreV1ContainerImage.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerImageFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerImageToJson(this);
}


///Set of ids/uuids to uniquely identify the node. More info:
///https://kubernetes.io/docs/concepts/nodes/node/#info
///
///NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
@JsonSerializable()
class IoK8SApiCoreV1NodeSystemInfo {
    
    ///The Architecture reported by the node
    @JsonKey(name: "architecture")
    String architecture;
    
    ///Boot ID reported by the node.
    @JsonKey(name: "bootID")
    String bootId;
    
    ///ContainerRuntime Version reported by the node through runtime remote API (e.g.
    ///containerd://1.4.2).
    @JsonKey(name: "containerRuntimeVersion")
    String containerRuntimeVersion;
    
    ///Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
    @JsonKey(name: "kernelVersion")
    String kernelVersion;
    
    ///Kubelet Version reported by the node.
    @JsonKey(name: "kubeletVersion")
    String kubeletVersion;
    
    ///KubeProxy Version reported by the node.
    @JsonKey(name: "kubeProxyVersion")
    String kubeProxyVersion;
    
    ///MachineID reported by the node. For unique machine identification in the cluster this
    ///field is preferred. Learn more from man(5) machine-id:
    ///http://man7.org/linux/man-pages/man5/machine-id.5.html
    @JsonKey(name: "machineID")
    String machineId;
    
    ///The Operating System reported by the node
    @JsonKey(name: "operatingSystem")
    String operatingSystem;
    
    ///OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
    @JsonKey(name: "osImage")
    String osImage;
    
    ///SystemUUID reported by the node. For unique machine identification MachineID is
    ///preferred. This field is specific to Red Hat hosts
    ///https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
    @JsonKey(name: "systemUUID")
    String systemUuid;

    IoK8SApiCoreV1NodeSystemInfo({
        required this.architecture,
        required this.bootId,
        required this.containerRuntimeVersion,
        required this.kernelVersion,
        required this.kubeletVersion,
        required this.kubeProxyVersion,
        required this.machineId,
        required this.operatingSystem,
        required this.osImage,
        required this.systemUuid,
    });

    factory IoK8SApiCoreV1NodeSystemInfo.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSystemInfoFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSystemInfoToJson(this);
}


///NodeRuntimeHandler is a set of runtime handler information.
@JsonSerializable()
class IoK8SApiCoreV1NodeRuntimeHandler {
    
    ///Supported features.
    @JsonKey(name: "features")
    IoK8SApiCoreV1NodeRuntimeHandlerFeatures? features;
    
    ///Runtime handler name. Empty for the default runtime handler.
    @JsonKey(name: "name")
    String? name;

    IoK8SApiCoreV1NodeRuntimeHandler({
        this.features,
        this.name,
    });

    factory IoK8SApiCoreV1NodeRuntimeHandler.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeRuntimeHandlerFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeRuntimeHandlerToJson(this);
}


///Supported features.
///
///NodeRuntimeHandlerFeatures is a set of runtime features.
@JsonSerializable()
class IoK8SApiCoreV1NodeRuntimeHandlerFeatures {
    
    ///RecursiveReadOnlyMounts is set to true if the runtime handler supports
    ///RecursiveReadOnlyMounts.
    @JsonKey(name: "recursiveReadOnlyMounts")
    bool? recursiveReadOnlyMounts;

    IoK8SApiCoreV1NodeRuntimeHandlerFeatures({
        this.recursiveReadOnlyMounts,
    });

    factory IoK8SApiCoreV1NodeRuntimeHandlerFeatures.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesToJson(this);
}


///AttachedVolume describes a volume attached to a node
@JsonSerializable()
class IoK8SApiCoreV1AttachedVolume {
    
    ///DevicePath represents the device path where the volume should be available
    @JsonKey(name: "devicePath")
    String devicePath;
    
    ///Name of the attached volume
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1AttachedVolume({
        required this.devicePath,
        required this.name,
    });

    factory IoK8SApiCoreV1AttachedVolume.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AttachedVolumeFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AttachedVolumeToJson(this);
}
