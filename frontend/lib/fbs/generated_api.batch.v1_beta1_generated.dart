// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library api.batch.v1_beta1;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;

import './generated_api.batch.v1_generated.dart' as api_batch_v1;
import './generated_api.core.v1_generated.dart' as api_core_v1;
import './generated_api.core.v1.config_map__generated.dart' as api_core_v1_config_map_;
import './generated_api.core.v1.container_status__generated.dart' as api_core_v1_container_status_;
import './generated_api.core.v1.csipersistent_volume_source__generated.dart' as api_core_v1_csipersistent_volume_source_;
import './generated_api.core.v1.csivolume_source__generated.dart' as api_core_v1_csivolume_source_;
import './generated_api.core.v1.flex_persistent_volume_source__generated.dart' as api_core_v1_flex_persistent_volume_source_;
import './generated_api.core.v1.flex_volume_source__generated.dart' as api_core_v1_flex_volume_source_;
import './generated_api.core.v1.limit_range_item__generated.dart' as api_core_v1_limit_range_item_;
import './generated_api.core.v1.node_status__generated.dart' as api_core_v1_node_status_;
import './generated_api.core.v1.persistent_volume_claim_status__generated.dart' as api_core_v1_persistent_volume_claim_status_;
import './generated_api.core.v1.persistent_volume_spec__generated.dart' as api_core_v1_persistent_volume_spec_;
import './generated_api.core.v1.pod_spec__generated.dart' as api_core_v1_pod_spec_;
import './generated_api.core.v1.replication_controller_spec__generated.dart' as api_core_v1_replication_controller_spec_;
import './generated_api.core.v1.resource_quota_spec__generated.dart' as api_core_v1_resource_quota_spec_;
import './generated_api.core.v1.resource_quota_status__generated.dart' as api_core_v1_resource_quota_status_;
import './generated_api.core.v1.resource_requirements__generated.dart' as api_core_v1_resource_requirements_;
import './generated_api.core.v1.secret__generated.dart' as api_core_v1_secret_;
import './generated_api.core.v1.service_spec__generated.dart' as api_core_v1_service_spec_;
import './generated_api.core.v1.volume_resource_requirements__generated.dart' as api_core_v1_volume_resource_requirements_;
import './generated_apimachinery.pkg.api.resource_generated.dart' as apimachinery_pkg_api_resource;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;
import './generated_apimachinery.pkg.util.intstr_generated.dart' as apimachinery_pkg_util_intstr;

import './generated_api.batch.v1_generated.dart' as api_batch_v1;
import './generated_api.core.v1.config_map__generated.dart' as api_core_v1_config_map_;
import './generated_api.core.v1.container_status__generated.dart' as api_core_v1_container_status_;
import './generated_api.core.v1.csipersistent_volume_source__generated.dart' as api_core_v1_csipersistent_volume_source_;
import './generated_api.core.v1.csivolume_source__generated.dart' as api_core_v1_csivolume_source_;
import './generated_api.core.v1.flex_persistent_volume_source__generated.dart' as api_core_v1_flex_persistent_volume_source_;
import './generated_api.core.v1.flex_volume_source__generated.dart' as api_core_v1_flex_volume_source_;
import './generated_api.core.v1.limit_range_item__generated.dart' as api_core_v1_limit_range_item_;
import './generated_api.core.v1.node_status__generated.dart' as api_core_v1_node_status_;
import './generated_api.core.v1.persistent_volume_claim_status__generated.dart' as api_core_v1_persistent_volume_claim_status_;
import './generated_api.core.v1.persistent_volume_spec__generated.dart' as api_core_v1_persistent_volume_spec_;
import './generated_api.core.v1.pod_spec__generated.dart' as api_core_v1_pod_spec_;
import './generated_api.core.v1.replication_controller_spec__generated.dart' as api_core_v1_replication_controller_spec_;
import './generated_api.core.v1.resource_quota_spec__generated.dart' as api_core_v1_resource_quota_spec_;
import './generated_api.core.v1.resource_quota_status__generated.dart' as api_core_v1_resource_quota_status_;
import './generated_api.core.v1.resource_requirements__generated.dart' as api_core_v1_resource_requirements_;
import './generated_api.core.v1.secret__generated.dart' as api_core_v1_secret_;
import './generated_api.core.v1.service_spec__generated.dart' as api_core_v1_service_spec_;
import './generated_api.core.v1.volume_resource_requirements__generated.dart' as api_core_v1_volume_resource_requirements_;
import './generated_api.core.v1_generated.dart' as api_core_v1;
import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

class CronJob {
  CronJob._(this._bc, this._bcOffset);
  factory CronJob(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<CronJob> reader = _CronJobReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  CronJobSpec? get spec => CronJobSpec.reader.vTableGetNullable(_bc, _bcOffset, 6);
  CronJobStatus? get status => CronJobStatus.reader.vTableGetNullable(_bc, _bcOffset, 8);

  @override
  String toString() {
    return 'CronJob{metadata: ${metadata}, spec: ${spec}, status: ${status}}';
  }
}

class _CronJobReader extends fb.TableReader<CronJob> {
  const _CronJobReader();

  @override
  CronJob createObject(fb.BufferContext bc, int offset) => 
    CronJob._(bc, offset);
}

class CronJobBuilder {
  CronJobBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(3);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addSpecOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addStatusOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class CronJobObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final CronJobSpecObjectBuilder? _spec;
  final CronJobStatusObjectBuilder? _status;

  CronJobObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    CronJobSpecObjectBuilder? spec,
    CronJobStatusObjectBuilder? status,
  })
      : _metadata = metadata,
        _spec = spec,
        _status = status;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? specOffset = _spec?.getOrCreateOffset(fbBuilder);
    final int? statusOffset = _status?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(3);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, specOffset);
    fbBuilder.addOffset(2, statusOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class CronJobList {
  CronJobList._(this._bc, this._bcOffset);
  factory CronJobList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<CronJobList> reader = _CronJobListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<CronJob>? get items => const fb.ListReader<CronJob>(CronJob.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'CronJobList{metadata: ${metadata}, items: ${items}}';
  }
}

class _CronJobListReader extends fb.TableReader<CronJobList> {
  const _CronJobListReader();

  @override
  CronJobList createObject(fb.BufferContext bc, int offset) => 
    CronJobList._(bc, offset);
}

class CronJobListBuilder {
  CronJobListBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addItemsOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class CronJobListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<CronJobObjectBuilder>? _items;

  CronJobListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<CronJobObjectBuilder>? items,
  })
      : _metadata = metadata,
        _items = items;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? itemsOffset = _items == null ? null
        : fbBuilder.writeList(_items!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, itemsOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class CronJobSpec {
  CronJobSpec._(this._bc, this._bcOffset);
  factory CronJobSpec(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<CronJobSpec> reader = _CronJobSpecReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get schedule => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get timeZone => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);
  int get startingDeadlineSeconds => const fb.Int64Reader().vTableGet(_bc, _bcOffset, 8, 0);
  String? get concurrencyPolicy => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 10);
  bool get suspend => const fb.BoolReader().vTableGet(_bc, _bcOffset, 12, false);
  JobTemplateSpec? get jobTemplate => JobTemplateSpec.reader.vTableGetNullable(_bc, _bcOffset, 14);
  int get successfulJobsHistoryLimit => const fb.Int32Reader().vTableGet(_bc, _bcOffset, 16, 0);
  int get failedJobsHistoryLimit => const fb.Int32Reader().vTableGet(_bc, _bcOffset, 18, 0);

  @override
  String toString() {
    return 'CronJobSpec{schedule: ${schedule}, timeZone: ${timeZone}, startingDeadlineSeconds: ${startingDeadlineSeconds}, concurrencyPolicy: ${concurrencyPolicy}, suspend: ${suspend}, jobTemplate: ${jobTemplate}, successfulJobsHistoryLimit: ${successfulJobsHistoryLimit}, failedJobsHistoryLimit: ${failedJobsHistoryLimit}}';
  }
}

class _CronJobSpecReader extends fb.TableReader<CronJobSpec> {
  const _CronJobSpecReader();

  @override
  CronJobSpec createObject(fb.BufferContext bc, int offset) => 
    CronJobSpec._(bc, offset);
}

class CronJobSpecBuilder {
  CronJobSpecBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(8);
  }

  int addScheduleOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addTimeZoneOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addStartingDeadlineSeconds(int? startingDeadlineSeconds) {
    fbBuilder.addInt64(2, startingDeadlineSeconds);
    return fbBuilder.offset;
  }
  int addConcurrencyPolicyOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }
  int addSuspend(bool? suspend) {
    fbBuilder.addBool(4, suspend);
    return fbBuilder.offset;
  }
  int addJobTemplateOffset(int? offset) {
    fbBuilder.addOffset(5, offset);
    return fbBuilder.offset;
  }
  int addSuccessfulJobsHistoryLimit(int? successfulJobsHistoryLimit) {
    fbBuilder.addInt32(6, successfulJobsHistoryLimit);
    return fbBuilder.offset;
  }
  int addFailedJobsHistoryLimit(int? failedJobsHistoryLimit) {
    fbBuilder.addInt32(7, failedJobsHistoryLimit);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class CronJobSpecObjectBuilder extends fb.ObjectBuilder {
  final String? _schedule;
  final String? _timeZone;
  final int? _startingDeadlineSeconds;
  final String? _concurrencyPolicy;
  final bool? _suspend;
  final JobTemplateSpecObjectBuilder? _jobTemplate;
  final int? _successfulJobsHistoryLimit;
  final int? _failedJobsHistoryLimit;

  CronJobSpecObjectBuilder({
    String? schedule,
    String? timeZone,
    int? startingDeadlineSeconds,
    String? concurrencyPolicy,
    bool? suspend,
    JobTemplateSpecObjectBuilder? jobTemplate,
    int? successfulJobsHistoryLimit,
    int? failedJobsHistoryLimit,
  })
      : _schedule = schedule,
        _timeZone = timeZone,
        _startingDeadlineSeconds = startingDeadlineSeconds,
        _concurrencyPolicy = concurrencyPolicy,
        _suspend = suspend,
        _jobTemplate = jobTemplate,
        _successfulJobsHistoryLimit = successfulJobsHistoryLimit,
        _failedJobsHistoryLimit = failedJobsHistoryLimit;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? scheduleOffset = _schedule == null ? null
        : fbBuilder.writeString(_schedule!);
    final int? timeZoneOffset = _timeZone == null ? null
        : fbBuilder.writeString(_timeZone!);
    final int? concurrencyPolicyOffset = _concurrencyPolicy == null ? null
        : fbBuilder.writeString(_concurrencyPolicy!);
    final int? jobTemplateOffset = _jobTemplate?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(8);
    fbBuilder.addOffset(0, scheduleOffset);
    fbBuilder.addOffset(1, timeZoneOffset);
    fbBuilder.addInt64(2, _startingDeadlineSeconds);
    fbBuilder.addOffset(3, concurrencyPolicyOffset);
    fbBuilder.addBool(4, _suspend);
    fbBuilder.addOffset(5, jobTemplateOffset);
    fbBuilder.addInt32(6, _successfulJobsHistoryLimit);
    fbBuilder.addInt32(7, _failedJobsHistoryLimit);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class CronJobStatus {
  CronJobStatus._(this._bc, this._bcOffset);
  factory CronJobStatus(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<CronJobStatus> reader = _CronJobStatusReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  List<api_core_v1.ObjectReference>? get active => const fb.ListReader<api_core_v1.ObjectReference>(api_core_v1.ObjectReference.reader).vTableGetNullable(_bc, _bcOffset, 4);
  apimachinery_pkg_apis_meta_v1.Time? get lastScheduleTime => apimachinery_pkg_apis_meta_v1.Time.reader.vTableGetNullable(_bc, _bcOffset, 6);
  apimachinery_pkg_apis_meta_v1.Time? get lastSuccessfulTime => apimachinery_pkg_apis_meta_v1.Time.reader.vTableGetNullable(_bc, _bcOffset, 8);

  @override
  String toString() {
    return 'CronJobStatus{active: ${active}, lastScheduleTime: ${lastScheduleTime}, lastSuccessfulTime: ${lastSuccessfulTime}}';
  }
}

class _CronJobStatusReader extends fb.TableReader<CronJobStatus> {
  const _CronJobStatusReader();

  @override
  CronJobStatus createObject(fb.BufferContext bc, int offset) => 
    CronJobStatus._(bc, offset);
}

class CronJobStatusBuilder {
  CronJobStatusBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(3);
  }

  int addActiveOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addLastScheduleTimeOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addLastSuccessfulTimeOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class CronJobStatusObjectBuilder extends fb.ObjectBuilder {
  final List<api_core_v1.ObjectReferenceObjectBuilder>? _active;
  final apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? _lastScheduleTime;
  final apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? _lastSuccessfulTime;

  CronJobStatusObjectBuilder({
    List<api_core_v1.ObjectReferenceObjectBuilder>? active,
    apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? lastScheduleTime,
    apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? lastSuccessfulTime,
  })
      : _active = active,
        _lastScheduleTime = lastScheduleTime,
        _lastSuccessfulTime = lastSuccessfulTime;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? activeOffset = _active == null ? null
        : fbBuilder.writeList(_active!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    final int? lastScheduleTimeOffset = _lastScheduleTime?.getOrCreateOffset(fbBuilder);
    final int? lastSuccessfulTimeOffset = _lastSuccessfulTime?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(3);
    fbBuilder.addOffset(0, activeOffset);
    fbBuilder.addOffset(1, lastScheduleTimeOffset);
    fbBuilder.addOffset(2, lastSuccessfulTimeOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class JobTemplateSpec {
  JobTemplateSpec._(this._bc, this._bcOffset);
  factory JobTemplateSpec(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<JobTemplateSpec> reader = _JobTemplateSpecReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  api_batch_v1.JobSpec? get spec => api_batch_v1.JobSpec.reader.vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'JobTemplateSpec{metadata: ${metadata}, spec: ${spec}}';
  }
}

class _JobTemplateSpecReader extends fb.TableReader<JobTemplateSpec> {
  const _JobTemplateSpecReader();

  @override
  JobTemplateSpec createObject(fb.BufferContext bc, int offset) => 
    JobTemplateSpec._(bc, offset);
}

class JobTemplateSpecBuilder {
  JobTemplateSpecBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addSpecOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class JobTemplateSpecObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final api_batch_v1.JobSpecObjectBuilder? _spec;

  JobTemplateSpecObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    api_batch_v1.JobSpecObjectBuilder? spec,
  })
      : _metadata = metadata,
        _spec = spec;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? specOffset = _spec?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, specOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
