import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'persistentvolumeclaimstatus_v1.g.dart';


///PersistentVolumeClaimStatus is the current status of a persistent volume claim.
@JsonSerializable()
class PersistentvolumeclaimstatusV1 {
    
    ///accessModes contains the actual access modes the volume backing the PVC has. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
    @JsonKey(name: "accessModes")
    List<String?>? accessModes;
    
    ///allocatedResources tracks the resources allocated to a PVC including its capacity. Key
    ///names follow standard Kubernetes label syntax. Valid values are either:
    ///* Un-prefixed keys:
    ///- storage - the capacity of the volume.
    ///* Custom resources must use implementation-defined prefixed names such as
    ///"example.com/my-custom-resource"
    ///Apart from above values - keys that are unprefixed or have kubernetes.io prefix are
    ///considered reserved and hence may not be used.
    ///
    ///Capacity reported here may be larger than the actual capacity when a volume expansion
    ///operation is requested. For storage quota, the larger value from allocatedResources and
    ///PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is
    ///used for quota calculation. If a volume expansion capacity request is lowered,
    ///allocatedResources is only lowered if there are no expansion operations in progress and
    ///if the actual volume capacity is equal or lower than the requested capacity.
    ///
    ///A controller that receives PVC update with previously unknown resourceName should ignore
    ///the update for the purpose it was designed. For example - a controller that only is
    ///responsible for resizing capacity of the volume, should ignore PVC updates that change
    ///other valid resources associated with PVC.
    ///
    ///This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    @JsonKey(name: "allocatedResources")
    Map<String, dynamic>? allocatedResources;
    
    ///allocatedResourceStatuses stores status of resource being resized for the given PVC. Key
    ///names follow standard Kubernetes label syntax. Valid values are either:
    ///* Un-prefixed keys:
    ///- storage - the capacity of the volume.
    ///* Custom resources must use implementation-defined prefixed names such as
    ///"example.com/my-custom-resource"
    ///Apart from above values - keys that are unprefixed or have kubernetes.io prefix are
    ///considered reserved and hence may not be used.
    ///
    ///ClaimResourceStatus can be in any of following states:
    ///- ControllerResizeInProgress:
    ///State set when resize controller starts resizing the volume in control-plane.
    ///- ControllerResizeFailed:
    ///State set when resize has failed in resize controller with a terminal error.
    ///- NodeResizePending:
    ///State set when resize controller has finished resizing the volume but further resizing
    ///of
    ///volume is needed on the node.
    ///- NodeResizeInProgress:
    ///State set when kubelet starts resizing the volume.
    ///- NodeResizeFailed:
    ///State set when resizing has failed in kubelet with a terminal error. Transient errors
    ///don't set
    ///NodeResizeFailed.
    ///For example: if expanding a PVC for more capacity - this field can be one of the
    ///following states:
    ///- pvc.status.allocatedResourceStatus['storage'] = "ControllerResizeInProgress"
    ///- pvc.status.allocatedResourceStatus['storage'] = "ControllerResizeFailed"
    ///- pvc.status.allocatedResourceStatus['storage'] = "NodeResizePending"
    ///- pvc.status.allocatedResourceStatus['storage'] = "NodeResizeInProgress"
    ///- pvc.status.allocatedResourceStatus['storage'] = "NodeResizeFailed"
    ///When this field is not set, it means that no resize operation is in progress for the
    ///given PVC.
    ///
    ///A controller that receives PVC update with previously unknown resourceName or
    ///ClaimResourceStatus should ignore the update for the purpose it was designed. For example
    ///- a controller that only is responsible for resizing capacity of the volume, should
    ///ignore PVC updates that change other valid resources associated with PVC.
    ///
    ///This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    @JsonKey(name: "allocatedResourceStatuses")
    Map<String, String?>? allocatedResourceStatuses;
    
    ///capacity represents the actual resources of the underlying volume.
    @JsonKey(name: "capacity")
    Map<String, dynamic>? capacity;
    
    ///conditions is the current Condition of persistent volume claim. If underlying persistent
    ///volume is being resized then the Condition will be set to 'Resizing'.
    @JsonKey(name: "conditions")
    List<IoK8SApiCoreV1PersistentVolumeClaimCondition>? conditions;
    
    ///currentVolumeAttributesClassName is the current name of the VolumeAttributesClass the PVC
    ///is using. When unset, there is no VolumeAttributeClass applied to this
    ///PersistentVolumeClaim This is an alpha field and requires enabling VolumeAttributesClass
    ///feature.
    @JsonKey(name: "currentVolumeAttributesClassName")
    String? currentVolumeAttributesClassName;
    
    ///ModifyVolumeStatus represents the status object of ControllerModifyVolume operation. When
    ///this is unset, there is no ModifyVolume operation being attempted. This is an alpha field
    ///and requires enabling VolumeAttributesClass feature.
    @JsonKey(name: "modifyVolumeStatus")
    IoK8SApiCoreV1ModifyVolumeStatus? modifyVolumeStatus;
    
    ///phase represents the current phase of PersistentVolumeClaim.
    @JsonKey(name: "phase")
    String? phase;

    PersistentvolumeclaimstatusV1({
        this.accessModes,
        this.allocatedResources,
        this.allocatedResourceStatuses,
        this.capacity,
        this.conditions,
        this.currentVolumeAttributesClassName,
        this.modifyVolumeStatus,
        this.phase,
    });

    factory PersistentvolumeclaimstatusV1.fromJson(Map<String, dynamic> json) => _$PersistentvolumeclaimstatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$PersistentvolumeclaimstatusV1ToJson(this);
}


///PersistentVolumeClaimCondition contains details about state of pvc
@JsonSerializable()
class IoK8SApiCoreV1PersistentVolumeClaimCondition {
    
    ///lastProbeTime is the time we probed the condition.
    @JsonKey(name: "lastProbeTime")
    DateTime? lastProbeTime;
    
    ///lastTransitionTime is the time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///message is the human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///reason is a unique, this should be a short, machine understandable string that gives the
    ///reason for condition's last transition. If it reports "Resizing" that means the
    ///underlying persistent volume is being resized.
    @JsonKey(name: "reason")
    String? reason;
    @JsonKey(name: "status")
    String status;
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1PersistentVolumeClaimCondition({
        this.lastProbeTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiCoreV1PersistentVolumeClaimCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PersistentVolumeClaimConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PersistentVolumeClaimConditionToJson(this);
}


///ModifyVolumeStatus represents the status object of ControllerModifyVolume operation. When
///this is unset, there is no ModifyVolume operation being attempted. This is an alpha field
///and requires enabling VolumeAttributesClass feature.
///
///ModifyVolumeStatus represents the status object of ControllerModifyVolume operation
@JsonSerializable()
class IoK8SApiCoreV1ModifyVolumeStatus {
    
    ///status is the status of the ControllerModifyVolume operation. It can be in any of
    ///following states:
    ///- Pending
    ///Pending indicates that the PersistentVolumeClaim cannot be modified due to unmet
    ///requirements, such as
    ///the specified VolumeAttributesClass not existing.
    ///- InProgress
    ///InProgress indicates that the volume is being modified.
    ///- Infeasible
    ///Infeasible indicates that the request has been rejected as invalid by the CSI driver.
    ///To
    ///resolve the error, a valid VolumeAttributesClass needs to be specified.
    ///Note: New statuses can be added in the future. Consumers should check for unknown
    ///statuses and fail appropriately.
    @JsonKey(name: "status")
    String status;
    
    ///targetVolumeAttributesClassName is the name of the VolumeAttributesClass the PVC
    ///currently being reconciled
    @JsonKey(name: "targetVolumeAttributesClassName")
    String? targetVolumeAttributesClassName;

    IoK8SApiCoreV1ModifyVolumeStatus({
        required this.status,
        this.targetVolumeAttributesClassName,
    });

    factory IoK8SApiCoreV1ModifyVolumeStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ModifyVolumeStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ModifyVolumeStatusToJson(this);
}
