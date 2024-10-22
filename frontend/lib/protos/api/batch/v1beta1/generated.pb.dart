//
//  Generated code. Do not modify.
//  source: api/batch/v1beta1/generated.proto
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
import '../v1/generated.pb.dart' as $2;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CronJob', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CronJobList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CronJobSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1beta1'), createEmptyInstance: create)
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

  /// The number of successful finished jobs to retain.
  /// This is a pointer to distinguish between explicit zero and not specified.
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

  /// The number of failed finished jobs to retain.
  /// This is a pointer to distinguish between explicit zero and not specified.
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CronJobStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1beta1'), createEmptyInstance: create)
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

/// JobTemplateSpec describes the data a Job should have when created from a template
class JobTemplateSpec extends $pb.GeneratedMessage {
  factory JobTemplateSpec({
    $0.ObjectMeta? metadata,
    $2.JobSpec? spec,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JobTemplateSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.batch.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<$2.JobSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: $2.JobSpec.create)
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
  $2.JobSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec($2.JobSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  $2.JobSpec ensureSpec() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
