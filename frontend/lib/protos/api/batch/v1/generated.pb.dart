//
//  Generated code. Do not modify.
//  source: api/batch/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;
import '../../core/v1/generated.pb.dart' as $1;

/// CronJob represents the configuration of a single cron job.
class CronJob extends $pb.GeneratedMessage {
  factory CronJob({
    $0.ObjectMeta? metadata,
    CronJobSpec? spec,
    CronJobStatus? status,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (spec != null) {
      $result.spec = spec;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  CronJob._() : super();
  factory CronJob.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CronJob.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CronJob', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<CronJobSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: CronJobSpec.create)
    ..aOM<CronJobStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: CronJobStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CronJob clone() => CronJob()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CronJob copyWith(void Function(CronJob) updates) => super.copyWith((message) => updates(message as CronJob)) as CronJob;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CronJob create() => CronJob._();
  CronJob createEmptyInstance() => create();
  static $pb.PbList<CronJob> createRepeated() => $pb.PbList<CronJob>();
  @$core.pragma('dart2js:noInline')
  static CronJob getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CronJob>(create);
  static CronJob? _defaultInstance;

  /// Standard object's metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $0.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ObjectMeta ensureMetadata() => $_ensure(0);

  /// Specification of the desired behavior of a cron job, including the schedule.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  CronJobSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(CronJobSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  CronJobSpec ensureSpec() => $_ensure(1);

  /// Current status of a cron job.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  CronJobStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(CronJobStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  CronJobStatus ensureStatus() => $_ensure(2);
}

/// CronJobList is a collection of cron jobs.
class CronJobList extends $pb.GeneratedMessage {
  factory CronJobList({
    $0.ListMeta? metadata,
    $core.Iterable<CronJob>? items,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  CronJobList._() : super();
  factory CronJobList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CronJobList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CronJobList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<CronJob>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CronJob.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CronJobList clone() => CronJobList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CronJobList copyWith(void Function(CronJobList) updates) => super.copyWith((message) => updates(message as CronJobList)) as CronJobList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CronJobList create() => CronJobList._();
  CronJobList createEmptyInstance() => create();
  static $pb.PbList<CronJobList> createRepeated() => $pb.PbList<CronJobList>();
  @$core.pragma('dart2js:noInline')
  static CronJobList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CronJobList>(create);
  static CronJobList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $0.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ListMeta ensureMetadata() => $_ensure(0);

  /// items is the list of CronJobs.
  @$pb.TagNumber(2)
  $core.List<CronJob> get items => $_getList(1);
}

/// CronJobSpec describes how the job execution will look like and when it will actually run.
class CronJobSpec extends $pb.GeneratedMessage {
  factory CronJobSpec({
    $core.String? schedule,
    $fixnum.Int64? startingDeadlineSeconds,
    $core.String? concurrencyPolicy,
    $core.bool? suspend,
    JobTemplateSpec? jobTemplate,
    $core.int? successfulJobsHistoryLimit,
    $core.int? failedJobsHistoryLimit,
    $core.String? timeZone,
  }) {
    final $result = create();
    if (schedule != null) {
      $result.schedule = schedule;
    }
    if (startingDeadlineSeconds != null) {
      $result.startingDeadlineSeconds = startingDeadlineSeconds;
    }
    if (concurrencyPolicy != null) {
      $result.concurrencyPolicy = concurrencyPolicy;
    }
    if (suspend != null) {
      $result.suspend = suspend;
    }
    if (jobTemplate != null) {
      $result.jobTemplate = jobTemplate;
    }
    if (successfulJobsHistoryLimit != null) {
      $result.successfulJobsHistoryLimit = successfulJobsHistoryLimit;
    }
    if (failedJobsHistoryLimit != null) {
      $result.failedJobsHistoryLimit = failedJobsHistoryLimit;
    }
    if (timeZone != null) {
      $result.timeZone = timeZone;
    }
    return $result;
  }
  CronJobSpec._() : super();
  factory CronJobSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CronJobSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CronJobSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'schedule')
    ..aInt64(2, _omitFieldNames ? '' : 'startingDeadlineSeconds', protoName: 'startingDeadlineSeconds')
    ..aOS(3, _omitFieldNames ? '' : 'concurrencyPolicy', protoName: 'concurrencyPolicy')
    ..aOB(4, _omitFieldNames ? '' : 'suspend')
    ..aOM<JobTemplateSpec>(5, _omitFieldNames ? '' : 'jobTemplate', protoName: 'jobTemplate', subBuilder: JobTemplateSpec.create)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'successfulJobsHistoryLimit', $pb.PbFieldType.O3, protoName: 'successfulJobsHistoryLimit')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'failedJobsHistoryLimit', $pb.PbFieldType.O3, protoName: 'failedJobsHistoryLimit')
    ..aOS(8, _omitFieldNames ? '' : 'timeZone', protoName: 'timeZone')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CronJobSpec clone() => CronJobSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CronJobSpec copyWith(void Function(CronJobSpec) updates) => super.copyWith((message) => updates(message as CronJobSpec)) as CronJobSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CronJobSpec create() => CronJobSpec._();
  CronJobSpec createEmptyInstance() => create();
  static $pb.PbList<CronJobSpec> createRepeated() => $pb.PbList<CronJobSpec>();
  @$core.pragma('dart2js:noInline')
  static CronJobSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CronJobSpec>(create);
  static CronJobSpec? _defaultInstance;

  /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  @$pb.TagNumber(1)
  $core.String get schedule => $_getSZ(0);
  @$pb.TagNumber(1)
  set schedule($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchedule() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchedule() => clearField(1);

  /// Optional deadline in seconds for starting the job if it misses scheduled
  /// time for any reason.  Missed jobs executions will be counted as failed ones.
  /// +optional
  @$pb.TagNumber(2)
  $fixnum.Int64 get startingDeadlineSeconds => $_getI64(1);
  @$pb.TagNumber(2)
  set startingDeadlineSeconds($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartingDeadlineSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartingDeadlineSeconds() => clearField(2);

  ///  Specifies how to treat concurrent executions of a Job.
  ///  Valid values are:
  ///
  ///  - "Allow" (default): allows CronJobs to run concurrently;
  ///  - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet;
  ///  - "Replace": cancels currently running job and replaces it with a new one
  ///  +optional
  @$pb.TagNumber(3)
  $core.String get concurrencyPolicy => $_getSZ(2);
  @$pb.TagNumber(3)
  set concurrencyPolicy($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConcurrencyPolicy() => $_has(2);
  @$pb.TagNumber(3)
  void clearConcurrencyPolicy() => clearField(3);

  /// This flag tells the controller to suspend subsequent executions, it does
  /// not apply to already started executions.  Defaults to false.
  /// +optional
  @$pb.TagNumber(4)
  $core.bool get suspend => $_getBF(3);
  @$pb.TagNumber(4)
  set suspend($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSuspend() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuspend() => clearField(4);

  /// Specifies the job that will be created when executing a CronJob.
  @$pb.TagNumber(5)
  JobTemplateSpec get jobTemplate => $_getN(4);
  @$pb.TagNumber(5)
  set jobTemplate(JobTemplateSpec v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasJobTemplate() => $_has(4);
  @$pb.TagNumber(5)
  void clearJobTemplate() => clearField(5);
  @$pb.TagNumber(5)
  JobTemplateSpec ensureJobTemplate() => $_ensure(4);

  /// The number of successful finished jobs to retain. Value must be non-negative integer.
  /// Defaults to 3.
  /// +optional
  @$pb.TagNumber(6)
  $core.int get successfulJobsHistoryLimit => $_getIZ(5);
  @$pb.TagNumber(6)
  set successfulJobsHistoryLimit($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSuccessfulJobsHistoryLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearSuccessfulJobsHistoryLimit() => clearField(6);

  /// The number of failed finished jobs to retain. Value must be non-negative integer.
  /// Defaults to 1.
  /// +optional
  @$pb.TagNumber(7)
  $core.int get failedJobsHistoryLimit => $_getIZ(6);
  @$pb.TagNumber(7)
  set failedJobsHistoryLimit($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFailedJobsHistoryLimit() => $_has(6);
  @$pb.TagNumber(7)
  void clearFailedJobsHistoryLimit() => clearField(7);

  /// The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones.
  /// If not specified, this will default to the time zone of the kube-controller-manager process.
  /// The set of valid time zone names and the time zone offset is loaded from the system-wide time zone
  /// database by the API server during CronJob validation and the controller manager during execution.
  /// If no system-wide time zone database can be found a bundled version of the database is used instead.
  /// If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host
  /// configuration, the controller will stop creating new new Jobs and will create a system event with the
  /// reason UnknownTimeZone.
  /// More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones
  /// +optional
  @$pb.TagNumber(8)
  $core.String get timeZone => $_getSZ(7);
  @$pb.TagNumber(8)
  set timeZone($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimeZone() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimeZone() => clearField(8);
}

/// CronJobStatus represents the current state of a cron job.
class CronJobStatus extends $pb.GeneratedMessage {
  factory CronJobStatus({
    $core.Iterable<$1.ObjectReference>? active,
    $0.Time? lastScheduleTime,
    $0.Time? lastSuccessfulTime,
  }) {
    final $result = create();
    if (active != null) {
      $result.active.addAll(active);
    }
    if (lastScheduleTime != null) {
      $result.lastScheduleTime = lastScheduleTime;
    }
    if (lastSuccessfulTime != null) {
      $result.lastSuccessfulTime = lastSuccessfulTime;
    }
    return $result;
  }
  CronJobStatus._() : super();
  factory CronJobStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CronJobStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CronJobStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..pc<$1.ObjectReference>(1, _omitFieldNames ? '' : 'active', $pb.PbFieldType.PM, subBuilder: $1.ObjectReference.create)
    ..aOM<$0.Time>(4, _omitFieldNames ? '' : 'lastScheduleTime', protoName: 'lastScheduleTime', subBuilder: $0.Time.create)
    ..aOM<$0.Time>(5, _omitFieldNames ? '' : 'lastSuccessfulTime', protoName: 'lastSuccessfulTime', subBuilder: $0.Time.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CronJobStatus clone() => CronJobStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CronJobStatus copyWith(void Function(CronJobStatus) updates) => super.copyWith((message) => updates(message as CronJobStatus)) as CronJobStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CronJobStatus create() => CronJobStatus._();
  CronJobStatus createEmptyInstance() => create();
  static $pb.PbList<CronJobStatus> createRepeated() => $pb.PbList<CronJobStatus>();
  @$core.pragma('dart2js:noInline')
  static CronJobStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CronJobStatus>(create);
  static CronJobStatus? _defaultInstance;

  /// A list of pointers to currently running jobs.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$1.ObjectReference> get active => $_getList(0);

  /// Information when was the last time the job was successfully scheduled.
  /// +optional
  @$pb.TagNumber(4)
  $0.Time get lastScheduleTime => $_getN(1);
  @$pb.TagNumber(4)
  set lastScheduleTime($0.Time v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastScheduleTime() => $_has(1);
  @$pb.TagNumber(4)
  void clearLastScheduleTime() => clearField(4);
  @$pb.TagNumber(4)
  $0.Time ensureLastScheduleTime() => $_ensure(1);

  /// Information when was the last time the job successfully completed.
  /// +optional
  @$pb.TagNumber(5)
  $0.Time get lastSuccessfulTime => $_getN(2);
  @$pb.TagNumber(5)
  set lastSuccessfulTime($0.Time v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastSuccessfulTime() => $_has(2);
  @$pb.TagNumber(5)
  void clearLastSuccessfulTime() => clearField(5);
  @$pb.TagNumber(5)
  $0.Time ensureLastSuccessfulTime() => $_ensure(2);
}

/// Job represents the configuration of a single job.
class Job extends $pb.GeneratedMessage {
  factory Job({
    $0.ObjectMeta? metadata,
    JobSpec? spec,
    JobStatus? status,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (spec != null) {
      $result.spec = spec;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  Job._() : super();
  factory Job.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Job.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Job', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<JobSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: JobSpec.create)
    ..aOM<JobStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: JobStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Job clone() => Job()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Job copyWith(void Function(Job) updates) => super.copyWith((message) => updates(message as Job)) as Job;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Job create() => Job._();
  Job createEmptyInstance() => create();
  static $pb.PbList<Job> createRepeated() => $pb.PbList<Job>();
  @$core.pragma('dart2js:noInline')
  static Job getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Job>(create);
  static Job? _defaultInstance;

  /// Standard object's metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $0.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ObjectMeta ensureMetadata() => $_ensure(0);

  /// Specification of the desired behavior of a job.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  JobSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(JobSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  JobSpec ensureSpec() => $_ensure(1);

  /// Current status of a job.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  JobStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(JobStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  JobStatus ensureStatus() => $_ensure(2);
}

/// JobCondition describes current state of a job.
class JobCondition extends $pb.GeneratedMessage {
  factory JobCondition({
    $core.String? type,
    $core.String? status,
    $0.Time? lastProbeTime,
    $0.Time? lastTransitionTime,
    $core.String? reason,
    $core.String? message,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (lastProbeTime != null) {
      $result.lastProbeTime = lastProbeTime;
    }
    if (lastTransitionTime != null) {
      $result.lastTransitionTime = lastTransitionTime;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  JobCondition._() : super();
  factory JobCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JobCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'lastProbeTime', protoName: 'lastProbeTime', subBuilder: $0.Time.create)
    ..aOM<$0.Time>(4, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: $0.Time.create)
    ..aOS(5, _omitFieldNames ? '' : 'reason')
    ..aOS(6, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobCondition clone() => JobCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobCondition copyWith(void Function(JobCondition) updates) => super.copyWith((message) => updates(message as JobCondition)) as JobCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobCondition create() => JobCondition._();
  JobCondition createEmptyInstance() => create();
  static $pb.PbList<JobCondition> createRepeated() => $pb.PbList<JobCondition>();
  @$core.pragma('dart2js:noInline')
  static JobCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobCondition>(create);
  static JobCondition? _defaultInstance;

  /// Type of job condition, Complete or Failed.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Status of the condition, one of True, False, Unknown.
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// Last time the condition was checked.
  /// +optional
  @$pb.TagNumber(3)
  $0.Time get lastProbeTime => $_getN(2);
  @$pb.TagNumber(3)
  set lastProbeTime($0.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastProbeTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastProbeTime() => clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureLastProbeTime() => $_ensure(2);

  /// Last time the condition transit from one status to another.
  /// +optional
  @$pb.TagNumber(4)
  $0.Time get lastTransitionTime => $_getN(3);
  @$pb.TagNumber(4)
  set lastTransitionTime($0.Time v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastTransitionTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastTransitionTime() => clearField(4);
  @$pb.TagNumber(4)
  $0.Time ensureLastTransitionTime() => $_ensure(3);

  /// (brief) reason for the condition's last transition.
  /// +optional
  @$pb.TagNumber(5)
  $core.String get reason => $_getSZ(4);
  @$pb.TagNumber(5)
  set reason($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearReason() => clearField(5);

  /// Human readable message indicating details about last transition.
  /// +optional
  @$pb.TagNumber(6)
  $core.String get message => $_getSZ(5);
  @$pb.TagNumber(6)
  set message($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessage() => clearField(6);
}

/// JobList is a collection of jobs.
class JobList extends $pb.GeneratedMessage {
  factory JobList({
    $0.ListMeta? metadata,
    $core.Iterable<Job>? items,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  JobList._() : super();
  factory JobList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JobList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<Job>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Job.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobList clone() => JobList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobList copyWith(void Function(JobList) updates) => super.copyWith((message) => updates(message as JobList)) as JobList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobList create() => JobList._();
  JobList createEmptyInstance() => create();
  static $pb.PbList<JobList> createRepeated() => $pb.PbList<JobList>();
  @$core.pragma('dart2js:noInline')
  static JobList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobList>(create);
  static JobList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $0.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ListMeta ensureMetadata() => $_ensure(0);

  /// items is the list of Jobs.
  @$pb.TagNumber(2)
  $core.List<Job> get items => $_getList(1);
}

/// JobSpec describes how the job execution will look like.
class JobSpec extends $pb.GeneratedMessage {
  factory JobSpec({
    $core.int? parallelism,
    $core.int? completions,
    $fixnum.Int64? activeDeadlineSeconds,
    $0.LabelSelector? selector,
    $core.bool? manualSelector,
    $1.PodTemplateSpec? template,
    $core.int? backoffLimit,
    $core.int? ttlSecondsAfterFinished,
    $core.String? completionMode,
    $core.bool? suspend,
    PodFailurePolicy? podFailurePolicy,
    $core.int? backoffLimitPerIndex,
    $core.int? maxFailedIndexes,
    $core.String? podReplacementPolicy,
    $core.String? managedBy,
    SuccessPolicy? successPolicy,
  }) {
    final $result = create();
    if (parallelism != null) {
      $result.parallelism = parallelism;
    }
    if (completions != null) {
      $result.completions = completions;
    }
    if (activeDeadlineSeconds != null) {
      $result.activeDeadlineSeconds = activeDeadlineSeconds;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (manualSelector != null) {
      $result.manualSelector = manualSelector;
    }
    if (template != null) {
      $result.template = template;
    }
    if (backoffLimit != null) {
      $result.backoffLimit = backoffLimit;
    }
    if (ttlSecondsAfterFinished != null) {
      $result.ttlSecondsAfterFinished = ttlSecondsAfterFinished;
    }
    if (completionMode != null) {
      $result.completionMode = completionMode;
    }
    if (suspend != null) {
      $result.suspend = suspend;
    }
    if (podFailurePolicy != null) {
      $result.podFailurePolicy = podFailurePolicy;
    }
    if (backoffLimitPerIndex != null) {
      $result.backoffLimitPerIndex = backoffLimitPerIndex;
    }
    if (maxFailedIndexes != null) {
      $result.maxFailedIndexes = maxFailedIndexes;
    }
    if (podReplacementPolicy != null) {
      $result.podReplacementPolicy = podReplacementPolicy;
    }
    if (managedBy != null) {
      $result.managedBy = managedBy;
    }
    if (successPolicy != null) {
      $result.successPolicy = successPolicy;
    }
    return $result;
  }
  JobSpec._() : super();
  factory JobSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JobSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'parallelism', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'completions', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'activeDeadlineSeconds', protoName: 'activeDeadlineSeconds')
    ..aOM<$0.LabelSelector>(4, _omitFieldNames ? '' : 'selector', subBuilder: $0.LabelSelector.create)
    ..aOB(5, _omitFieldNames ? '' : 'manualSelector', protoName: 'manualSelector')
    ..aOM<$1.PodTemplateSpec>(6, _omitFieldNames ? '' : 'template', subBuilder: $1.PodTemplateSpec.create)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'backoffLimit', $pb.PbFieldType.O3, protoName: 'backoffLimit')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'ttlSecondsAfterFinished', $pb.PbFieldType.O3, protoName: 'ttlSecondsAfterFinished')
    ..aOS(9, _omitFieldNames ? '' : 'completionMode', protoName: 'completionMode')
    ..aOB(10, _omitFieldNames ? '' : 'suspend')
    ..aOM<PodFailurePolicy>(11, _omitFieldNames ? '' : 'podFailurePolicy', protoName: 'podFailurePolicy', subBuilder: PodFailurePolicy.create)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'backoffLimitPerIndex', $pb.PbFieldType.O3, protoName: 'backoffLimitPerIndex')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'maxFailedIndexes', $pb.PbFieldType.O3, protoName: 'maxFailedIndexes')
    ..aOS(14, _omitFieldNames ? '' : 'podReplacementPolicy', protoName: 'podReplacementPolicy')
    ..aOS(15, _omitFieldNames ? '' : 'managedBy', protoName: 'managedBy')
    ..aOM<SuccessPolicy>(16, _omitFieldNames ? '' : 'successPolicy', protoName: 'successPolicy', subBuilder: SuccessPolicy.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobSpec clone() => JobSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobSpec copyWith(void Function(JobSpec) updates) => super.copyWith((message) => updates(message as JobSpec)) as JobSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobSpec create() => JobSpec._();
  JobSpec createEmptyInstance() => create();
  static $pb.PbList<JobSpec> createRepeated() => $pb.PbList<JobSpec>();
  @$core.pragma('dart2js:noInline')
  static JobSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobSpec>(create);
  static JobSpec? _defaultInstance;

  /// Specifies the maximum desired number of pods the job should
  /// run at any given time. The actual number of pods running in steady state will
  /// be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism),
  /// i.e. when the work left to do is less than max parallelism.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  /// +optional
  @$pb.TagNumber(1)
  $core.int get parallelism => $_getIZ(0);
  @$pb.TagNumber(1)
  set parallelism($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParallelism() => $_has(0);
  @$pb.TagNumber(1)
  void clearParallelism() => clearField(1);

  /// Specifies the desired number of successfully finished pods the
  /// job should be run with.  Setting to null means that the success of any
  /// pod signals the success of all pods, and allows parallelism to have any positive
  /// value.  Setting to 1 means that parallelism is limited to 1 and the success of that
  /// pod signals the success of the job.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  /// +optional
  @$pb.TagNumber(2)
  $core.int get completions => $_getIZ(1);
  @$pb.TagNumber(2)
  set completions($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompletions() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompletions() => clearField(2);

  /// Specifies the duration in seconds relative to the startTime that the job
  /// may be continuously active before the system tries to terminate it; value
  /// must be positive integer. If a Job is suspended (at creation or through an
  /// update), this timer will effectively be stopped and reset when the Job is
  /// resumed again.
  /// +optional
  @$pb.TagNumber(3)
  $fixnum.Int64 get activeDeadlineSeconds => $_getI64(2);
  @$pb.TagNumber(3)
  set activeDeadlineSeconds($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActiveDeadlineSeconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearActiveDeadlineSeconds() => clearField(3);

  /// A label query over pods that should match the pod count.
  /// Normally, the system sets this field for you.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// +optional
  @$pb.TagNumber(4)
  $0.LabelSelector get selector => $_getN(3);
  @$pb.TagNumber(4)
  set selector($0.LabelSelector v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSelector() => $_has(3);
  @$pb.TagNumber(4)
  void clearSelector() => clearField(4);
  @$pb.TagNumber(4)
  $0.LabelSelector ensureSelector() => $_ensure(3);

  /// manualSelector controls generation of pod labels and pod selectors.
  /// Leave `manualSelector` unset unless you are certain what you are doing.
  /// When false or unset, the system pick labels unique to this job
  /// and appends those labels to the pod template.  When true,
  /// the user is responsible for picking unique labels and specifying
  /// the selector.  Failure to pick a unique label may cause this
  /// and other jobs to not function correctly.  However, You may see
  /// `manualSelector=true` in jobs that were created with the old `extensions/v1beta1`
  /// API.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector
  /// +optional
  @$pb.TagNumber(5)
  $core.bool get manualSelector => $_getBF(4);
  @$pb.TagNumber(5)
  set manualSelector($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasManualSelector() => $_has(4);
  @$pb.TagNumber(5)
  void clearManualSelector() => clearField(5);

  /// Describes the pod that will be created when executing a job.
  /// The only allowed template.spec.restartPolicy values are "Never" or "OnFailure".
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  @$pb.TagNumber(6)
  $1.PodTemplateSpec get template => $_getN(5);
  @$pb.TagNumber(6)
  set template($1.PodTemplateSpec v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTemplate() => $_has(5);
  @$pb.TagNumber(6)
  void clearTemplate() => clearField(6);
  @$pb.TagNumber(6)
  $1.PodTemplateSpec ensureTemplate() => $_ensure(5);

  /// Specifies the number of retries before marking this job failed.
  /// Defaults to 6
  /// +optional
  @$pb.TagNumber(7)
  $core.int get backoffLimit => $_getIZ(6);
  @$pb.TagNumber(7)
  set backoffLimit($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBackoffLimit() => $_has(6);
  @$pb.TagNumber(7)
  void clearBackoffLimit() => clearField(7);

  /// ttlSecondsAfterFinished limits the lifetime of a Job that has finished
  /// execution (either Complete or Failed). If this field is set,
  /// ttlSecondsAfterFinished after the Job finishes, it is eligible to be
  /// automatically deleted. When the Job is being deleted, its lifecycle
  /// guarantees (e.g. finalizers) will be honored. If this field is unset,
  /// the Job won't be automatically deleted. If this field is set to zero,
  /// the Job becomes eligible to be deleted immediately after it finishes.
  /// +optional
  @$pb.TagNumber(8)
  $core.int get ttlSecondsAfterFinished => $_getIZ(7);
  @$pb.TagNumber(8)
  set ttlSecondsAfterFinished($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTtlSecondsAfterFinished() => $_has(7);
  @$pb.TagNumber(8)
  void clearTtlSecondsAfterFinished() => clearField(8);

  ///  completionMode specifies how Pod completions are tracked. It can be
  ///  `NonIndexed` (default) or `Indexed`.
  ///
  ///  `NonIndexed` means that the Job is considered complete when there have
  ///  been .spec.completions successfully completed Pods. Each Pod completion is
  ///  homologous to each other.
  ///
  ///  `Indexed` means that the Pods of a
  ///  Job get an associated completion index from 0 to (.spec.completions - 1),
  ///  available in the annotation batch.kubernetes.io/job-completion-index.
  ///  The Job is considered complete when there is one successfully completed Pod
  ///  for each index.
  ///  When value is `Indexed`, .spec.completions must be specified and
  ///  `.spec.parallelism` must be less than or equal to 10^5.
  ///  In addition, The Pod name takes the form
  ///  `$(job-name)-$(index)-$(random-string)`,
  ///  the Pod hostname takes the form `$(job-name)-$(index)`.
  ///
  ///  More completion modes can be added in the future.
  ///  If the Job controller observes a mode that it doesn't recognize, which
  ///  is possible during upgrades due to version skew, the controller
  ///  skips updates for the Job.
  ///  +optional
  @$pb.TagNumber(9)
  $core.String get completionMode => $_getSZ(8);
  @$pb.TagNumber(9)
  set completionMode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCompletionMode() => $_has(8);
  @$pb.TagNumber(9)
  void clearCompletionMode() => clearField(9);

  ///  suspend specifies whether the Job controller should create Pods or not. If
  ///  a Job is created with suspend set to true, no Pods are created by the Job
  ///  controller. If a Job is suspended after creation (i.e. the flag goes from
  ///  false to true), the Job controller will delete all active Pods associated
  ///  with this Job. Users must design their workload to gracefully handle this.
  ///  Suspending a Job will reset the StartTime field of the Job, effectively
  ///  resetting the ActiveDeadlineSeconds timer too. Defaults to false.
  ///
  ///  +optional
  @$pb.TagNumber(10)
  $core.bool get suspend => $_getBF(9);
  @$pb.TagNumber(10)
  set suspend($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSuspend() => $_has(9);
  @$pb.TagNumber(10)
  void clearSuspend() => clearField(10);

  ///  Specifies the policy of handling failed pods. In particular, it allows to
  ///  specify the set of actions and conditions which need to be
  ///  satisfied to take the associated action.
  ///  If empty, the default behaviour applies - the counter of failed pods,
  ///  represented by the jobs's .status.failed field, is incremented and it is
  ///  checked against the backoffLimit. This field cannot be used in combination
  ///  with restartPolicy=OnFailure.
  ///
  ///  This field is beta-level. It can be used when the `JobPodFailurePolicy`
  ///  feature gate is enabled (enabled by default).
  ///  +optional
  @$pb.TagNumber(11)
  PodFailurePolicy get podFailurePolicy => $_getN(10);
  @$pb.TagNumber(11)
  set podFailurePolicy(PodFailurePolicy v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasPodFailurePolicy() => $_has(10);
  @$pb.TagNumber(11)
  void clearPodFailurePolicy() => clearField(11);
  @$pb.TagNumber(11)
  PodFailurePolicy ensurePodFailurePolicy() => $_ensure(10);

  /// Specifies the limit for the number of retries within an
  /// index before marking this index as failed. When enabled the number of
  /// failures per index is kept in the pod's
  /// batch.kubernetes.io/job-index-failure-count annotation. It can only
  /// be set when Job's completionMode=Indexed, and the Pod's restart
  /// policy is Never. The field is immutable.
  /// This field is beta-level. It can be used when the `JobBackoffLimitPerIndex`
  /// feature gate is enabled (enabled by default).
  /// +optional
  @$pb.TagNumber(12)
  $core.int get backoffLimitPerIndex => $_getIZ(11);
  @$pb.TagNumber(12)
  set backoffLimitPerIndex($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBackoffLimitPerIndex() => $_has(11);
  @$pb.TagNumber(12)
  void clearBackoffLimitPerIndex() => clearField(12);

  /// Specifies the maximal number of failed indexes before marking the Job as
  /// failed, when backoffLimitPerIndex is set. Once the number of failed
  /// indexes exceeds this number the entire Job is marked as Failed and its
  /// execution is terminated. When left as null the job continues execution of
  /// all of its indexes and is marked with the `Complete` Job condition.
  /// It can only be specified when backoffLimitPerIndex is set.
  /// It can be null or up to completions. It is required and must be
  /// less than or equal to 10^4 when is completions greater than 10^5.
  /// This field is beta-level. It can be used when the `JobBackoffLimitPerIndex`
  /// feature gate is enabled (enabled by default).
  /// +optional
  @$pb.TagNumber(13)
  $core.int get maxFailedIndexes => $_getIZ(12);
  @$pb.TagNumber(13)
  set maxFailedIndexes($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMaxFailedIndexes() => $_has(12);
  @$pb.TagNumber(13)
  void clearMaxFailedIndexes() => clearField(13);

  ///  podReplacementPolicy specifies when to create replacement Pods.
  ///  Possible values are:
  ///  - TerminatingOrFailed means that we recreate pods
  ///    when they are terminating (has a metadata.deletionTimestamp) or failed.
  ///  - Failed means to wait until a previously created Pod is fully terminated (has phase
  ///    Failed or Succeeded) before creating a replacement Pod.
  ///
  ///  When using podFailurePolicy, Failed is the the only allowed value.
  ///  TerminatingOrFailed and Failed are allowed values when podFailurePolicy is not in use.
  ///  This is an beta field. To use this, enable the JobPodReplacementPolicy feature toggle.
  ///  This is on by default.
  ///  +optional
  @$pb.TagNumber(14)
  $core.String get podReplacementPolicy => $_getSZ(13);
  @$pb.TagNumber(14)
  set podReplacementPolicy($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPodReplacementPolicy() => $_has(13);
  @$pb.TagNumber(14)
  void clearPodReplacementPolicy() => clearField(14);

  ///  ManagedBy field indicates the controller that manages a Job. The k8s Job
  ///  controller reconciles jobs which don't have this field at all or the field
  ///  value is the reserved string `kubernetes.io/job-controller`, but skips
  ///  reconciling Jobs with a custom value for this field.
  ///  The value must be a valid domain-prefixed path (e.g. acme.io/foo) -
  ///  all characters before the first "/" must be a valid subdomain as defined
  ///  by RFC 1123. All characters trailing the first "/" must be valid HTTP Path
  ///  characters as defined by RFC 3986. The value cannot exceed 64 characters.
  ///
  ///  This field is alpha-level. The job controller accepts setting the field
  ///  when the feature gate JobManagedBy is enabled (disabled by default).
  ///  +optional
  @$pb.TagNumber(15)
  $core.String get managedBy => $_getSZ(14);
  @$pb.TagNumber(15)
  set managedBy($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasManagedBy() => $_has(14);
  @$pb.TagNumber(15)
  void clearManagedBy() => clearField(15);

  ///  successPolicy specifies the policy when the Job can be declared as succeeded.
  ///  If empty, the default behavior applies - the Job is declared as succeeded
  ///  only when the number of succeeded pods equals to the completions.
  ///  When the field is specified, it must be immutable and works only for the Indexed Jobs.
  ///  Once the Job meets the SuccessPolicy, the lingering pods are terminated.
  ///
  ///  This field  is alpha-level. To use this field, you must enable the
  ///  `JobSuccessPolicy` feature gate (disabled by default).
  ///  +optional
  @$pb.TagNumber(16)
  SuccessPolicy get successPolicy => $_getN(15);
  @$pb.TagNumber(16)
  set successPolicy(SuccessPolicy v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasSuccessPolicy() => $_has(15);
  @$pb.TagNumber(16)
  void clearSuccessPolicy() => clearField(16);
  @$pb.TagNumber(16)
  SuccessPolicy ensureSuccessPolicy() => $_ensure(15);
}

/// JobStatus represents the current state of a Job.
class JobStatus extends $pb.GeneratedMessage {
  factory JobStatus({
    $core.Iterable<JobCondition>? conditions,
    $0.Time? startTime,
    $0.Time? completionTime,
    $core.int? active,
    $core.int? succeeded,
    $core.int? failed,
    $core.String? completedIndexes,
    UncountedTerminatedPods? uncountedTerminatedPods,
    $core.int? ready,
    $core.String? failedIndexes,
    $core.int? terminating,
  }) {
    final $result = create();
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (completionTime != null) {
      $result.completionTime = completionTime;
    }
    if (active != null) {
      $result.active = active;
    }
    if (succeeded != null) {
      $result.succeeded = succeeded;
    }
    if (failed != null) {
      $result.failed = failed;
    }
    if (completedIndexes != null) {
      $result.completedIndexes = completedIndexes;
    }
    if (uncountedTerminatedPods != null) {
      $result.uncountedTerminatedPods = uncountedTerminatedPods;
    }
    if (ready != null) {
      $result.ready = ready;
    }
    if (failedIndexes != null) {
      $result.failedIndexes = failedIndexes;
    }
    if (terminating != null) {
      $result.terminating = terminating;
    }
    return $result;
  }
  JobStatus._() : super();
  factory JobStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JobStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..pc<JobCondition>(1, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: JobCondition.create)
    ..aOM<$0.Time>(2, _omitFieldNames ? '' : 'startTime', protoName: 'startTime', subBuilder: $0.Time.create)
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'completionTime', protoName: 'completionTime', subBuilder: $0.Time.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'active', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'succeeded', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'failed', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'completedIndexes', protoName: 'completedIndexes')
    ..aOM<UncountedTerminatedPods>(8, _omitFieldNames ? '' : 'uncountedTerminatedPods', protoName: 'uncountedTerminatedPods', subBuilder: UncountedTerminatedPods.create)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'ready', $pb.PbFieldType.O3)
    ..aOS(10, _omitFieldNames ? '' : 'failedIndexes', protoName: 'failedIndexes')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'terminating', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobStatus clone() => JobStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobStatus copyWith(void Function(JobStatus) updates) => super.copyWith((message) => updates(message as JobStatus)) as JobStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobStatus create() => JobStatus._();
  JobStatus createEmptyInstance() => create();
  static $pb.PbList<JobStatus> createRepeated() => $pb.PbList<JobStatus>();
  @$core.pragma('dart2js:noInline')
  static JobStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobStatus>(create);
  static JobStatus? _defaultInstance;

  ///  The latest available observations of an object's current state. When a Job
  ///  fails, one of the conditions will have type "Failed" and status true. When
  ///  a Job is suspended, one of the conditions will have type "Suspended" and
  ///  status true; when the Job is resumed, the status of this condition will
  ///  become false. When a Job is completed, one of the conditions will have
  ///  type "Complete" and status true.
  ///
  ///  A job is considered finished when it is in a terminal condition, either
  ///  "Complete" or "Failed". A Job cannot have both the "Complete" and "Failed" conditions.
  ///  Additionally, it cannot be in the "Complete" and "FailureTarget" conditions.
  ///  The "Complete", "Failed" and "FailureTarget" conditions cannot be disabled.
  ///
  ///  More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  ///  +optional
  ///  +patchMergeKey=type
  ///  +patchStrategy=merge
  ///  +listType=atomic
  @$pb.TagNumber(1)
  $core.List<JobCondition> get conditions => $_getList(0);

  ///  Represents time when the job controller started processing a job. When a
  ///  Job is created in the suspended state, this field is not set until the
  ///  first time it is resumed. This field is reset every time a Job is resumed
  ///  from suspension. It is represented in RFC3339 form and is in UTC.
  ///
  ///  Once set, the field can only be removed when the job is suspended.
  ///  The field cannot be modified while the job is unsuspended or finished.
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $0.Time get startTime => $_getN(1);
  @$pb.TagNumber(2)
  set startTime($0.Time v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTime() => clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureStartTime() => $_ensure(1);

  /// Represents time when the job was completed. It is not guaranteed to
  /// be set in happens-before order across separate operations.
  /// It is represented in RFC3339 form and is in UTC.
  /// The completion time is set when the job finishes successfully, and only then.
  /// The value cannot be updated or removed. The value indicates the same or
  /// later point in time as the startTime field.
  /// +optional
  @$pb.TagNumber(3)
  $0.Time get completionTime => $_getN(2);
  @$pb.TagNumber(3)
  set completionTime($0.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompletionTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompletionTime() => clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureCompletionTime() => $_ensure(2);

  /// The number of pending and running pods which are not terminating (without
  /// a deletionTimestamp).
  /// The value is zero for finished jobs.
  /// +optional
  @$pb.TagNumber(4)
  $core.int get active => $_getIZ(3);
  @$pb.TagNumber(4)
  set active($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasActive() => $_has(3);
  @$pb.TagNumber(4)
  void clearActive() => clearField(4);

  /// The number of pods which reached phase Succeeded.
  /// The value increases monotonically for a given spec. However, it may
  /// decrease in reaction to scale down of elastic indexed jobs.
  /// +optional
  @$pb.TagNumber(5)
  $core.int get succeeded => $_getIZ(4);
  @$pb.TagNumber(5)
  set succeeded($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSucceeded() => $_has(4);
  @$pb.TagNumber(5)
  void clearSucceeded() => clearField(5);

  /// The number of pods which reached phase Failed.
  /// The value increases monotonically.
  /// +optional
  @$pb.TagNumber(6)
  $core.int get failed => $_getIZ(5);
  @$pb.TagNumber(6)
  set failed($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFailed() => $_has(5);
  @$pb.TagNumber(6)
  void clearFailed() => clearField(6);

  /// completedIndexes holds the completed indexes when .spec.completionMode =
  /// "Indexed" in a text format. The indexes are represented as decimal integers
  /// separated by commas. The numbers are listed in increasing order. Three or
  /// more consecutive numbers are compressed and represented by the first and
  /// last element of the series, separated by a hyphen.
  /// For example, if the completed indexes are 1, 3, 4, 5 and 7, they are
  /// represented as "1,3-5,7".
  /// +optional
  @$pb.TagNumber(7)
  $core.String get completedIndexes => $_getSZ(6);
  @$pb.TagNumber(7)
  set completedIndexes($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCompletedIndexes() => $_has(6);
  @$pb.TagNumber(7)
  void clearCompletedIndexes() => clearField(7);

  ///  uncountedTerminatedPods holds the UIDs of Pods that have terminated but
  ///  the job controller hasn't yet accounted for in the status counters.
  ///
  ///  The job controller creates pods with a finalizer. When a pod terminates
  ///  (succeeded or failed), the controller does three steps to account for it
  ///  in the job status:
  ///
  ///  1. Add the pod UID to the arrays in this field.
  ///  2. Remove the pod finalizer.
  ///  3. Remove the pod UID from the arrays while increasing the corresponding
  ///      counter.
  ///
  ///  Old jobs might not be tracked using this field, in which case the field
  ///  remains null.
  ///  The structure is empty for finished jobs.
  ///  +optional
  @$pb.TagNumber(8)
  UncountedTerminatedPods get uncountedTerminatedPods => $_getN(7);
  @$pb.TagNumber(8)
  set uncountedTerminatedPods(UncountedTerminatedPods v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUncountedTerminatedPods() => $_has(7);
  @$pb.TagNumber(8)
  void clearUncountedTerminatedPods() => clearField(8);
  @$pb.TagNumber(8)
  UncountedTerminatedPods ensureUncountedTerminatedPods() => $_ensure(7);

  /// The number of pods which have a Ready condition.
  /// +optional
  @$pb.TagNumber(9)
  $core.int get ready => $_getIZ(8);
  @$pb.TagNumber(9)
  set ready($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasReady() => $_has(8);
  @$pb.TagNumber(9)
  void clearReady() => clearField(9);

  ///  FailedIndexes holds the failed indexes when spec.backoffLimitPerIndex is set.
  ///  The indexes are represented in the text format analogous as for the
  ///  `completedIndexes` field, ie. they are kept as decimal integers
  ///  separated by commas. The numbers are listed in increasing order. Three or
  ///  more consecutive numbers are compressed and represented by the first and
  ///  last element of the series, separated by a hyphen.
  ///  For example, if the failed indexes are 1, 3, 4, 5 and 7, they are
  ///  represented as "1,3-5,7".
  ///  The set of failed indexes cannot overlap with the set of completed indexes.
  ///
  ///  This field is beta-level. It can be used when the `JobBackoffLimitPerIndex`
  ///  feature gate is enabled (enabled by default).
  ///  +optional
  @$pb.TagNumber(10)
  $core.String get failedIndexes => $_getSZ(9);
  @$pb.TagNumber(10)
  set failedIndexes($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFailedIndexes() => $_has(9);
  @$pb.TagNumber(10)
  void clearFailedIndexes() => clearField(10);

  ///  The number of pods which are terminating (in phase Pending or Running
  ///  and have a deletionTimestamp).
  ///
  ///  This field is beta-level. The job controller populates the field when
  ///  the feature gate JobPodReplacementPolicy is enabled (enabled by default).
  ///  +optional
  @$pb.TagNumber(11)
  $core.int get terminating => $_getIZ(10);
  @$pb.TagNumber(11)
  set terminating($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTerminating() => $_has(10);
  @$pb.TagNumber(11)
  void clearTerminating() => clearField(11);
}

/// JobTemplateSpec describes the data a Job should have when created from a template
class JobTemplateSpec extends $pb.GeneratedMessage {
  factory JobTemplateSpec({
    $0.ObjectMeta? metadata,
    JobSpec? spec,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (spec != null) {
      $result.spec = spec;
    }
    return $result;
  }
  JobTemplateSpec._() : super();
  factory JobTemplateSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobTemplateSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JobTemplateSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<JobSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: JobSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobTemplateSpec clone() => JobTemplateSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobTemplateSpec copyWith(void Function(JobTemplateSpec) updates) => super.copyWith((message) => updates(message as JobTemplateSpec)) as JobTemplateSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobTemplateSpec create() => JobTemplateSpec._();
  JobTemplateSpec createEmptyInstance() => create();
  static $pb.PbList<JobTemplateSpec> createRepeated() => $pb.PbList<JobTemplateSpec>();
  @$core.pragma('dart2js:noInline')
  static JobTemplateSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobTemplateSpec>(create);
  static JobTemplateSpec? _defaultInstance;

  /// Standard object's metadata of the jobs created from this template.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $0.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ObjectMeta ensureMetadata() => $_ensure(0);

  /// Specification of the desired behavior of the job.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  JobSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(JobSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  JobSpec ensureSpec() => $_ensure(1);
}

/// PodFailurePolicy describes how failed pods influence the backoffLimit.
class PodFailurePolicy extends $pb.GeneratedMessage {
  factory PodFailurePolicy({
    $core.Iterable<PodFailurePolicyRule>? rules,
  }) {
    final $result = create();
    if (rules != null) {
      $result.rules.addAll(rules);
    }
    return $result;
  }
  PodFailurePolicy._() : super();
  factory PodFailurePolicy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodFailurePolicy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodFailurePolicy', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..pc<PodFailurePolicyRule>(1, _omitFieldNames ? '' : 'rules', $pb.PbFieldType.PM, subBuilder: PodFailurePolicyRule.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodFailurePolicy clone() => PodFailurePolicy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodFailurePolicy copyWith(void Function(PodFailurePolicy) updates) => super.copyWith((message) => updates(message as PodFailurePolicy)) as PodFailurePolicy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodFailurePolicy create() => PodFailurePolicy._();
  PodFailurePolicy createEmptyInstance() => create();
  static $pb.PbList<PodFailurePolicy> createRepeated() => $pb.PbList<PodFailurePolicy>();
  @$core.pragma('dart2js:noInline')
  static PodFailurePolicy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodFailurePolicy>(create);
  static PodFailurePolicy? _defaultInstance;

  /// A list of pod failure policy rules. The rules are evaluated in order.
  /// Once a rule matches a Pod failure, the remaining of the rules are ignored.
  /// When no rule matches the Pod failure, the default handling applies - the
  /// counter of pod failures is incremented and it is checked against
  /// the backoffLimit. At most 20 elements are allowed.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<PodFailurePolicyRule> get rules => $_getList(0);
}

/// PodFailurePolicyOnExitCodesRequirement describes the requirement for handling
/// a failed pod based on its container exit codes. In particular, it lookups the
/// .state.terminated.exitCode for each app container and init container status,
/// represented by the .status.containerStatuses and .status.initContainerStatuses
/// fields in the Pod status, respectively. Containers completed with success
/// (exit code 0) are excluded from the requirement check.
class PodFailurePolicyOnExitCodesRequirement extends $pb.GeneratedMessage {
  factory PodFailurePolicyOnExitCodesRequirement({
    $core.String? containerName,
    $core.String? operator,
    $core.Iterable<$core.int>? values,
  }) {
    final $result = create();
    if (containerName != null) {
      $result.containerName = containerName;
    }
    if (operator != null) {
      $result.operator = operator;
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  PodFailurePolicyOnExitCodesRequirement._() : super();
  factory PodFailurePolicyOnExitCodesRequirement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodFailurePolicyOnExitCodesRequirement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodFailurePolicyOnExitCodesRequirement', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'containerName', protoName: 'containerName')
    ..aOS(2, _omitFieldNames ? '' : 'operator')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'values', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodFailurePolicyOnExitCodesRequirement clone() => PodFailurePolicyOnExitCodesRequirement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodFailurePolicyOnExitCodesRequirement copyWith(void Function(PodFailurePolicyOnExitCodesRequirement) updates) => super.copyWith((message) => updates(message as PodFailurePolicyOnExitCodesRequirement)) as PodFailurePolicyOnExitCodesRequirement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodFailurePolicyOnExitCodesRequirement create() => PodFailurePolicyOnExitCodesRequirement._();
  PodFailurePolicyOnExitCodesRequirement createEmptyInstance() => create();
  static $pb.PbList<PodFailurePolicyOnExitCodesRequirement> createRepeated() => $pb.PbList<PodFailurePolicyOnExitCodesRequirement>();
  @$core.pragma('dart2js:noInline')
  static PodFailurePolicyOnExitCodesRequirement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodFailurePolicyOnExitCodesRequirement>(create);
  static PodFailurePolicyOnExitCodesRequirement? _defaultInstance;

  /// Restricts the check for exit codes to the container with the
  /// specified name. When null, the rule applies to all containers.
  /// When specified, it should match one the container or initContainer
  /// names in the pod template.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get containerName => $_getSZ(0);
  @$pb.TagNumber(1)
  set containerName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContainerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearContainerName() => clearField(1);

  ///  Represents the relationship between the container exit code(s) and the
  ///  specified values. Containers completed with success (exit code 0) are
  ///  excluded from the requirement check. Possible values are:
  ///
  ///  - In: the requirement is satisfied if at least one container exit code
  ///    (might be multiple if there are multiple containers not restricted
  ///    by the 'containerName' field) is in the set of specified values.
  ///  - NotIn: the requirement is satisfied if at least one container exit code
  ///    (might be multiple if there are multiple containers not restricted
  ///    by the 'containerName' field) is not in the set of specified values.
  ///  Additional values are considered to be added in the future. Clients should
  ///  react to an unknown operator by assuming the requirement is not satisfied.
  @$pb.TagNumber(2)
  $core.String get operator => $_getSZ(1);
  @$pb.TagNumber(2)
  set operator($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperator() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperator() => clearField(2);

  /// Specifies the set of values. Each returned container exit code (might be
  /// multiple in case of multiple containers) is checked against this set of
  /// values with respect to the operator. The list of values must be ordered
  /// and must not contain duplicates. Value '0' cannot be used for the In operator.
  /// At least one element is required. At most 255 elements are allowed.
  /// +listType=set
  @$pb.TagNumber(3)
  $core.List<$core.int> get values => $_getList(2);
}

/// PodFailurePolicyOnPodConditionsPattern describes a pattern for matching
/// an actual pod condition type.
class PodFailurePolicyOnPodConditionsPattern extends $pb.GeneratedMessage {
  factory PodFailurePolicyOnPodConditionsPattern({
    $core.String? type,
    $core.String? status,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  PodFailurePolicyOnPodConditionsPattern._() : super();
  factory PodFailurePolicyOnPodConditionsPattern.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodFailurePolicyOnPodConditionsPattern.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodFailurePolicyOnPodConditionsPattern', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodFailurePolicyOnPodConditionsPattern clone() => PodFailurePolicyOnPodConditionsPattern()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodFailurePolicyOnPodConditionsPattern copyWith(void Function(PodFailurePolicyOnPodConditionsPattern) updates) => super.copyWith((message) => updates(message as PodFailurePolicyOnPodConditionsPattern)) as PodFailurePolicyOnPodConditionsPattern;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodFailurePolicyOnPodConditionsPattern create() => PodFailurePolicyOnPodConditionsPattern._();
  PodFailurePolicyOnPodConditionsPattern createEmptyInstance() => create();
  static $pb.PbList<PodFailurePolicyOnPodConditionsPattern> createRepeated() => $pb.PbList<PodFailurePolicyOnPodConditionsPattern>();
  @$core.pragma('dart2js:noInline')
  static PodFailurePolicyOnPodConditionsPattern getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodFailurePolicyOnPodConditionsPattern>(create);
  static PodFailurePolicyOnPodConditionsPattern? _defaultInstance;

  /// Specifies the required Pod condition type. To match a pod condition
  /// it is required that specified type equals the pod condition type.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Specifies the required Pod condition status. To match a pod condition
  /// it is required that the specified status equals the pod condition status.
  /// Defaults to True.
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

/// PodFailurePolicyRule describes how a pod failure is handled when the requirements are met.
/// One of onExitCodes and onPodConditions, but not both, can be used in each rule.
class PodFailurePolicyRule extends $pb.GeneratedMessage {
  factory PodFailurePolicyRule({
    $core.String? action,
    PodFailurePolicyOnExitCodesRequirement? onExitCodes,
    $core.Iterable<PodFailurePolicyOnPodConditionsPattern>? onPodConditions,
  }) {
    final $result = create();
    if (action != null) {
      $result.action = action;
    }
    if (onExitCodes != null) {
      $result.onExitCodes = onExitCodes;
    }
    if (onPodConditions != null) {
      $result.onPodConditions.addAll(onPodConditions);
    }
    return $result;
  }
  PodFailurePolicyRule._() : super();
  factory PodFailurePolicyRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodFailurePolicyRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodFailurePolicyRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'action')
    ..aOM<PodFailurePolicyOnExitCodesRequirement>(2, _omitFieldNames ? '' : 'onExitCodes', protoName: 'onExitCodes', subBuilder: PodFailurePolicyOnExitCodesRequirement.create)
    ..pc<PodFailurePolicyOnPodConditionsPattern>(3, _omitFieldNames ? '' : 'onPodConditions', $pb.PbFieldType.PM, protoName: 'onPodConditions', subBuilder: PodFailurePolicyOnPodConditionsPattern.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodFailurePolicyRule clone() => PodFailurePolicyRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodFailurePolicyRule copyWith(void Function(PodFailurePolicyRule) updates) => super.copyWith((message) => updates(message as PodFailurePolicyRule)) as PodFailurePolicyRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodFailurePolicyRule create() => PodFailurePolicyRule._();
  PodFailurePolicyRule createEmptyInstance() => create();
  static $pb.PbList<PodFailurePolicyRule> createRepeated() => $pb.PbList<PodFailurePolicyRule>();
  @$core.pragma('dart2js:noInline')
  static PodFailurePolicyRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodFailurePolicyRule>(create);
  static PodFailurePolicyRule? _defaultInstance;

  ///  Specifies the action taken on a pod failure when the requirements are satisfied.
  ///  Possible values are:
  ///
  ///  - FailJob: indicates that the pod's job is marked as Failed and all
  ///    running pods are terminated.
  ///  - FailIndex: indicates that the pod's index is marked as Failed and will
  ///    not be restarted.
  ///    This value is beta-level. It can be used when the
  ///    `JobBackoffLimitPerIndex` feature gate is enabled (enabled by default).
  ///  - Ignore: indicates that the counter towards the .backoffLimit is not
  ///    incremented and a replacement pod is created.
  ///  - Count: indicates that the pod is handled in the default way - the
  ///    counter towards the .backoffLimit is incremented.
  ///  Additional values are considered to be added in the future. Clients should
  ///  react to an unknown action by skipping the rule.
  @$pb.TagNumber(1)
  $core.String get action => $_getSZ(0);
  @$pb.TagNumber(1)
  set action($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);

  /// Represents the requirement on the container exit codes.
  /// +optional
  @$pb.TagNumber(2)
  PodFailurePolicyOnExitCodesRequirement get onExitCodes => $_getN(1);
  @$pb.TagNumber(2)
  set onExitCodes(PodFailurePolicyOnExitCodesRequirement v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOnExitCodes() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnExitCodes() => clearField(2);
  @$pb.TagNumber(2)
  PodFailurePolicyOnExitCodesRequirement ensureOnExitCodes() => $_ensure(1);

  /// Represents the requirement on the pod conditions. The requirement is represented
  /// as a list of pod condition patterns. The requirement is satisfied if at
  /// least one pattern matches an actual pod condition. At most 20 elements are allowed.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(3)
  $core.List<PodFailurePolicyOnPodConditionsPattern> get onPodConditions => $_getList(2);
}

/// SuccessPolicy describes when a Job can be declared as succeeded based on the success of some indexes.
class SuccessPolicy extends $pb.GeneratedMessage {
  factory SuccessPolicy({
    $core.Iterable<SuccessPolicyRule>? rules,
  }) {
    final $result = create();
    if (rules != null) {
      $result.rules.addAll(rules);
    }
    return $result;
  }
  SuccessPolicy._() : super();
  factory SuccessPolicy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SuccessPolicy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuccessPolicy', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..pc<SuccessPolicyRule>(1, _omitFieldNames ? '' : 'rules', $pb.PbFieldType.PM, subBuilder: SuccessPolicyRule.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SuccessPolicy clone() => SuccessPolicy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SuccessPolicy copyWith(void Function(SuccessPolicy) updates) => super.copyWith((message) => updates(message as SuccessPolicy)) as SuccessPolicy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuccessPolicy create() => SuccessPolicy._();
  SuccessPolicy createEmptyInstance() => create();
  static $pb.PbList<SuccessPolicy> createRepeated() => $pb.PbList<SuccessPolicy>();
  @$core.pragma('dart2js:noInline')
  static SuccessPolicy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuccessPolicy>(create);
  static SuccessPolicy? _defaultInstance;

  /// rules represents the list of alternative rules for the declaring the Jobs
  /// as successful before `.status.succeeded >= .spec.completions`. Once any of the rules are met,
  /// the "SucceededCriteriaMet" condition is added, and the lingering pods are removed.
  /// The terminal state for such a Job has the "Complete" condition.
  /// Additionally, these rules are evaluated in order; Once the Job meets one of the rules,
  /// other rules are ignored. At most 20 elements are allowed.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<SuccessPolicyRule> get rules => $_getList(0);
}

/// SuccessPolicyRule describes rule for declaring a Job as succeeded.
/// Each rule must have at least one of the "succeededIndexes" or "succeededCount" specified.
class SuccessPolicyRule extends $pb.GeneratedMessage {
  factory SuccessPolicyRule({
    $core.String? succeededIndexes,
    $core.int? succeededCount,
  }) {
    final $result = create();
    if (succeededIndexes != null) {
      $result.succeededIndexes = succeededIndexes;
    }
    if (succeededCount != null) {
      $result.succeededCount = succeededCount;
    }
    return $result;
  }
  SuccessPolicyRule._() : super();
  factory SuccessPolicyRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SuccessPolicyRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuccessPolicyRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'succeededIndexes', protoName: 'succeededIndexes')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'succeededCount', $pb.PbFieldType.O3, protoName: 'succeededCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SuccessPolicyRule clone() => SuccessPolicyRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SuccessPolicyRule copyWith(void Function(SuccessPolicyRule) updates) => super.copyWith((message) => updates(message as SuccessPolicyRule)) as SuccessPolicyRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuccessPolicyRule create() => SuccessPolicyRule._();
  SuccessPolicyRule createEmptyInstance() => create();
  static $pb.PbList<SuccessPolicyRule> createRepeated() => $pb.PbList<SuccessPolicyRule>();
  @$core.pragma('dart2js:noInline')
  static SuccessPolicyRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuccessPolicyRule>(create);
  static SuccessPolicyRule? _defaultInstance;

  ///  succeededIndexes specifies the set of indexes
  ///  which need to be contained in the actual set of the succeeded indexes for the Job.
  ///  The list of indexes must be within 0 to ".spec.completions-1" and
  ///  must not contain duplicates. At least one element is required.
  ///  The indexes are represented as intervals separated by commas.
  ///  The intervals can be a decimal integer or a pair of decimal integers separated by a hyphen.
  ///  The number are listed in represented by the first and last element of the series,
  ///  separated by a hyphen.
  ///  For example, if the completed indexes are 1, 3, 4, 5 and 7, they are
  ///  represented as "1,3-5,7".
  ///  When this field is null, this field doesn't default to any value
  ///  and is never evaluated at any time.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  $core.String get succeededIndexes => $_getSZ(0);
  @$pb.TagNumber(1)
  set succeededIndexes($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSucceededIndexes() => $_has(0);
  @$pb.TagNumber(1)
  void clearSucceededIndexes() => clearField(1);

  ///  succeededCount specifies the minimal required size of the actual set of the succeeded indexes
  ///  for the Job. When succeededCount is used along with succeededIndexes, the check is
  ///  constrained only to the set of indexes specified by succeededIndexes.
  ///  For example, given that succeededIndexes is "1-4", succeededCount is "3",
  ///  and completed indexes are "1", "3", and "5", the Job isn't declared as succeeded
  ///  because only "1" and "3" indexes are considered in that rules.
  ///  When this field is null, this doesn't default to any value and
  ///  is never evaluated at any time.
  ///  When specified it needs to be a positive integer.
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $core.int get succeededCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set succeededCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSucceededCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearSucceededCount() => clearField(2);
}

/// UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't
/// been accounted in Job status counters.
class UncountedTerminatedPods extends $pb.GeneratedMessage {
  factory UncountedTerminatedPods({
    $core.Iterable<$core.String>? succeeded,
    $core.Iterable<$core.String>? failed,
  }) {
    final $result = create();
    if (succeeded != null) {
      $result.succeeded.addAll(succeeded);
    }
    if (failed != null) {
      $result.failed.addAll(failed);
    }
    return $result;
  }
  UncountedTerminatedPods._() : super();
  factory UncountedTerminatedPods.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UncountedTerminatedPods.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UncountedTerminatedPods', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'succeeded')
    ..pPS(2, _omitFieldNames ? '' : 'failed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UncountedTerminatedPods clone() => UncountedTerminatedPods()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UncountedTerminatedPods copyWith(void Function(UncountedTerminatedPods) updates) => super.copyWith((message) => updates(message as UncountedTerminatedPods)) as UncountedTerminatedPods;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UncountedTerminatedPods create() => UncountedTerminatedPods._();
  UncountedTerminatedPods createEmptyInstance() => create();
  static $pb.PbList<UncountedTerminatedPods> createRepeated() => $pb.PbList<UncountedTerminatedPods>();
  @$core.pragma('dart2js:noInline')
  static UncountedTerminatedPods getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UncountedTerminatedPods>(create);
  static UncountedTerminatedPods? _defaultInstance;

  /// succeeded holds UIDs of succeeded Pods.
  /// +listType=set
  /// +optional
  @$pb.TagNumber(1)
  $core.List<$core.String> get succeeded => $_getList(0);

  /// failed holds UIDs of failed Pods.
  /// +listType=set
  /// +optional
  @$pb.TagNumber(2)
  $core.List<$core.String> get failed => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
