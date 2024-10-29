import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podfailurepolicyrule_batch_v1.g.dart';


///PodFailurePolicyRule describes how a pod failure is handled when the requirements are
///met. One of onExitCodes and onPodConditions, but not both, can be used in each rule.
@JsonSerializable()
class PodfailurepolicyruleBatchV1 {
    
    ///Specifies the action taken on a pod failure when the requirements are satisfied. Possible
    ///values are:
    ///
    ///- FailJob: indicates that the pod's job is marked as Failed and all
    ///running pods are terminated.
    ///- FailIndex: indicates that the pod's index is marked as Failed and will
    ///not be restarted.
    ///This value is beta-level. It can be used when the
    ///`JobBackoffLimitPerIndex` feature gate is enabled (enabled by default).
    ///- Ignore: indicates that the counter towards the .backoffLimit is not
    ///incremented and a replacement pod is created.
    ///- Count: indicates that the pod is handled in the default way - the
    ///counter towards the .backoffLimit is incremented.
    ///Additional values are considered to be added in the future. Clients should react to an
    ///unknown action by skipping the rule.
    @JsonKey(name: "action")
    String? action;
    
    ///Represents the requirement on the container exit codes.
    @JsonKey(name: "onExitCodes")
    IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement? onExitCodes;
    
    ///Represents the requirement on the pod conditions. The requirement is represented as a
    ///list of pod condition patterns. The requirement is satisfied if at least one pattern
    ///matches an actual pod condition. At most 20 elements are allowed.
    @JsonKey(name: "onPodConditions")
    List<IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern>? onPodConditions;

    PodfailurepolicyruleBatchV1({
        required this.action,
        this.onExitCodes,
        this.onPodConditions,
    });

    factory PodfailurepolicyruleBatchV1.fromJson(Map<String, dynamic> json) => _$PodfailurepolicyruleBatchV1FromJson(json);

    Map<String, dynamic> toJson() => _$PodfailurepolicyruleBatchV1ToJson(this);
}


///Represents the requirement on the container exit codes.
///
///PodFailurePolicyOnExitCodesRequirement describes the requirement for handling a failed
///pod based on its container exit codes. In particular, it lookups the
///.state.terminated.exitCode for each app container and init container status, represented
///by the .status.containerStatuses and .status.initContainerStatuses fields in the Pod
///status, respectively. Containers completed with success (exit code 0) are excluded from
///the requirement check.
@JsonSerializable()
class IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement {
    
    ///Restricts the check for exit codes to the container with the specified name. When null,
    ///the rule applies to all containers. When specified, it should match one the container or
    ///initContainer names in the pod template.
    @JsonKey(name: "containerName")
    String? containerName;
    
    ///Represents the relationship between the container exit code(s) and the specified values.
    ///Containers completed with success (exit code 0) are excluded from the requirement check.
    ///Possible values are:
    ///
    ///- In: the requirement is satisfied if at least one container exit code
    ///(might be multiple if there are multiple containers not restricted
    ///by the 'containerName' field) is in the set of specified values.
    ///- NotIn: the requirement is satisfied if at least one container exit code
    ///(might be multiple if there are multiple containers not restricted
    ///by the 'containerName' field) is not in the set of specified values.
    ///Additional values are considered to be added in the future. Clients should react to an
    ///unknown operator by assuming the requirement is not satisfied.
    @JsonKey(name: "operator")
    String ioK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementOperator;
    
    ///Specifies the set of values. Each returned container exit code (might be multiple in case
    ///of multiple containers) is checked against this set of values with respect to the
    ///operator. The list of values must be ordered and must not contain duplicates. Value '0'
    ///cannot be used for the In operator. At least one element is required. At most 255
    ///elements are allowed.
    @JsonKey(name: "values")
    List<int> values;

    IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement({
        this.containerName,
        required this.ioK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementOperator,
        required this.values,
    });

    factory IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementToJson(this);
}


///PodFailurePolicyOnPodConditionsPattern describes a pattern for matching an actual pod
///condition type.
@JsonSerializable()
class IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern {
    
    ///Specifies the required Pod condition status. To match a pod condition it is required that
    ///the specified status equals the pod condition status. Defaults to True.
    @JsonKey(name: "status")
    String status;
    
    ///Specifies the required Pod condition type. To match a pod condition it is required that
    ///specified type equals the pod condition type.
    @JsonKey(name: "type")
    String type;

    IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern({
        required this.status,
        required this.type,
    });

    factory IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPatternFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPatternToJson(this);
}
