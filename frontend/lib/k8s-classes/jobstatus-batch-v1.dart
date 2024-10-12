import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'jobstatus_batch_v1.g.dart';


///JobStatus represents the current state of a Job.
@JsonSerializable()
class JobstatusBatchV1 {
    
    ///The number of pending and running pods which are not terminating (without a
    ///deletionTimestamp). The value is zero for finished jobs.
    @JsonKey(name: "active")
    int? active;
    
    ///completedIndexes holds the completed indexes when .spec.completionMode = "Indexed" in a
    ///text format. The indexes are represented as decimal integers separated by commas. The
    ///numbers are listed in increasing order. Three or more consecutive numbers are compressed
    ///and represented by the first and last element of the series, separated by a hyphen. For
    ///example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7".
    @JsonKey(name: "completedIndexes")
    String? completedIndexes;
    
    ///Represents time when the job was completed. It is not guaranteed to be set in
    ///happens-before order across separate operations. It is represented in RFC3339 form and is
    ///in UTC. The completion time is set when the job finishes successfully, and only then. The
    ///value cannot be updated or removed. The value indicates the same or later point in time
    ///as the startTime field.
    @JsonKey(name: "completionTime")
    DateTime? completionTime;
    
    ///The latest available observations of an object's current state. When a Job fails, one of
    ///the conditions will have type "Failed" and status true. When a Job is suspended, one of
    ///the conditions will have type "Suspended" and status true; when the Job is resumed, the
    ///status of this condition will become false. When a Job is completed, one of the
    ///conditions will have type "Complete" and status true.
    ///
    ///A job is considered finished when it is in a terminal condition, either "Complete" or
    ///"Failed". A Job cannot have both the "Complete" and "Failed" conditions. Additionally, it
    ///cannot be in the "Complete" and "FailureTarget" conditions. The "Complete", "Failed" and
    ///"FailureTarget" conditions cannot be disabled.
    ///
    ///More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
    @JsonKey(name: "conditions")
    List<IoK8SApiBatchV1JobCondition>? conditions;
    
    ///The number of pods which reached phase Failed. The value increases monotonically.
    @JsonKey(name: "failed")
    int? failed;
    
    ///FailedIndexes holds the failed indexes when spec.backoffLimitPerIndex is set. The indexes
    ///are represented in the text format analogous as for the `completedIndexes` field, ie.
    ///they are kept as decimal integers separated by commas. The numbers are listed in
    ///increasing order. Three or more consecutive numbers are compressed and represented by the
    ///first and last element of the series, separated by a hyphen. For example, if the failed
    ///indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7". The set of failed
    ///indexes cannot overlap with the set of completed indexes.
    ///
    ///This field is beta-level. It can be used when the `JobBackoffLimitPerIndex` feature gate
    ///is enabled (enabled by default).
    @JsonKey(name: "failedIndexes")
    String? failedIndexes;
    
    ///The number of pods which have a Ready condition.
    @JsonKey(name: "ready")
    int? ready;
    
    ///Represents time when the job controller started processing a job. When a Job is created
    ///in the suspended state, this field is not set until the first time it is resumed. This
    ///field is reset every time a Job is resumed from suspension. It is represented in RFC3339
    ///form and is in UTC.
    ///
    ///Once set, the field can only be removed when the job is suspended. The field cannot be
    ///modified while the job is unsuspended or finished.
    @JsonKey(name: "startTime")
    DateTime? startTime;
    
    ///The number of pods which reached phase Succeeded. The value increases monotonically for a
    ///given spec. However, it may decrease in reaction to scale down of elastic indexed jobs.
    @JsonKey(name: "succeeded")
    int? succeeded;
    
    ///The number of pods which are terminating (in phase Pending or Running and have a
    ///deletionTimestamp).
    ///
    ///This field is beta-level. The job controller populates the field when the feature gate
    ///JobPodReplacementPolicy is enabled (enabled by default).
    @JsonKey(name: "terminating")
    int? terminating;
    
    ///uncountedTerminatedPods holds the UIDs of Pods that have terminated but the job
    ///controller hasn't yet accounted for in the status counters.
    ///
    ///The job controller creates pods with a finalizer. When a pod terminates (succeeded or
    ///failed), the controller does three steps to account for it in the job status:
    ///
    ///1. Add the pod UID to the arrays in this field. 2. Remove the pod finalizer. 3. Remove
    ///the pod UID from the arrays while increasing the corresponding
    ///counter.
    ///
    ///Old jobs might not be tracked using this field, in which case the field remains null. The
    ///structure is empty for finished jobs.
    @JsonKey(name: "uncountedTerminatedPods")
    IoK8SApiBatchV1UncountedTerminatedPods? uncountedTerminatedPods;

    JobstatusBatchV1({
        this.active,
        this.completedIndexes,
        this.completionTime,
        this.conditions,
        this.failed,
        this.failedIndexes,
        this.ready,
        this.startTime,
        this.succeeded,
        this.terminating,
        this.uncountedTerminatedPods,
    });

    factory JobstatusBatchV1.fromJson(Map<String, dynamic> json) => _$JobstatusBatchV1FromJson(json);

    Map<String, dynamic> toJson() => _$JobstatusBatchV1ToJson(this);
}


///JobCondition describes current state of a job.
@JsonSerializable()
class IoK8SApiBatchV1JobCondition {
    
    ///Last time the condition was checked.
    @JsonKey(name: "lastProbeTime")
    DateTime? lastProbeTime;
    
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
    
    ///Type of job condition, Complete or Failed.
    @JsonKey(name: "type")
    String type;

    IoK8SApiBatchV1JobCondition({
        this.lastProbeTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiBatchV1JobCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1JobConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1JobConditionToJson(this);
}


///uncountedTerminatedPods holds the UIDs of Pods that have terminated but the job
///controller hasn't yet accounted for in the status counters.
///
///The job controller creates pods with a finalizer. When a pod terminates (succeeded or
///failed), the controller does three steps to account for it in the job status:
///
///1. Add the pod UID to the arrays in this field. 2. Remove the pod finalizer. 3. Remove
///the pod UID from the arrays while increasing the corresponding
///counter.
///
///Old jobs might not be tracked using this field, in which case the field remains null. The
///structure is empty for finished jobs.
///
///UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been
///accounted in Job status counters.
@JsonSerializable()
class IoK8SApiBatchV1UncountedTerminatedPods {
    
    ///failed holds UIDs of failed Pods.
    @JsonKey(name: "failed")
    List<String>? failed;
    
    ///succeeded holds UIDs of succeeded Pods.
    @JsonKey(name: "succeeded")
    List<String>? succeeded;

    IoK8SApiBatchV1UncountedTerminatedPods({
        this.failed,
        this.succeeded,
    });

    factory IoK8SApiBatchV1UncountedTerminatedPods.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1UncountedTerminatedPodsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1UncountedTerminatedPodsToJson(this);
}
