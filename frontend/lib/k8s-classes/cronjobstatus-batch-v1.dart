import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'cronjobstatus_batch_v1.g.dart';


///CronJobStatus represents the current state of a cron job.
@JsonSerializable()
class CronjobstatusBatchV1 {
    
    ///A list of pointers to currently running jobs.
    @JsonKey(name: "active")
    List<IoK8SApiCoreV1ObjectReference>? active;
    
    ///Information when was the last time the job was successfully scheduled.
    @JsonKey(name: "lastScheduleTime")
    DateTime? lastScheduleTime;
    
    ///Information when was the last time the job successfully completed.
    @JsonKey(name: "lastSuccessfulTime")
    DateTime? lastSuccessfulTime;

    CronjobstatusBatchV1({
        this.active,
        this.lastScheduleTime,
        this.lastSuccessfulTime,
    });

    factory CronjobstatusBatchV1.fromJson(Map<String, dynamic> json) => _$CronjobstatusBatchV1FromJson(json);

    Map<String, dynamic> toJson() => _$CronjobstatusBatchV1ToJson(this);
}


///ObjectReference contains enough information to let you inspect or modify the referred
///object.
@JsonSerializable()
class IoK8SApiCoreV1ObjectReference {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///If referring to a piece of an object instead of an entire object, this string should
    ///contain a valid JSON/Go field access statement, such as
    ///desiredState.manifest.containers[2]. For example, if the object reference is to a
    ///container within a pod, this would take on a value like: "spec.containers{name}" (where
    ///"name" refers to the name of the container that triggered the event) or if no container
    ///name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax
    ///is chosen only to have some well-defined way of referencing a part of an object.
    @JsonKey(name: "fieldPath")
    String? fieldPath;
    
    ///Kind of the referent. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///Specific resourceVersion to which this reference is made, if any. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///UID of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApiCoreV1ObjectReference({
        this.apiVersion,
        this.fieldPath,
        this.kind,
        this.name,
        this.namespace,
        this.resourceVersion,
        this.uid,
    });

    factory IoK8SApiCoreV1ObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ObjectReferenceToJson(this);
}
