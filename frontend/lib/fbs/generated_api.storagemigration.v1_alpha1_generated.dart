// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library api.storagemigration.v1_alpha1;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;

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

class GroupVersionResource {
  GroupVersionResource._(this._bc, this._bcOffset);
  factory GroupVersionResource(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<GroupVersionResource> reader = _GroupVersionResourceReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get group => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get version => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);
  String? get resource => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 8);

  @override
  String toString() {
    return 'GroupVersionResource{group: ${group}, version: ${version}, resource: ${resource}}';
  }
}

class _GroupVersionResourceReader extends fb.TableReader<GroupVersionResource> {
  const _GroupVersionResourceReader();

  @override
  GroupVersionResource createObject(fb.BufferContext bc, int offset) => 
    GroupVersionResource._(bc, offset);
}

class GroupVersionResourceBuilder {
  GroupVersionResourceBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(3);
  }

  int addGroupOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addVersionOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addResourceOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class GroupVersionResourceObjectBuilder extends fb.ObjectBuilder {
  final String? _group;
  final String? _version;
  final String? _resource;

  GroupVersionResourceObjectBuilder({
    String? group,
    String? version,
    String? resource,
  })
      : _group = group,
        _version = version,
        _resource = resource;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? groupOffset = _group == null ? null
        : fbBuilder.writeString(_group!);
    final int? versionOffset = _version == null ? null
        : fbBuilder.writeString(_version!);
    final int? resourceOffset = _resource == null ? null
        : fbBuilder.writeString(_resource!);
    fbBuilder.startTable(3);
    fbBuilder.addOffset(0, groupOffset);
    fbBuilder.addOffset(1, versionOffset);
    fbBuilder.addOffset(2, resourceOffset);
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
class MigrationCondition {
  MigrationCondition._(this._bc, this._bcOffset);
  factory MigrationCondition(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<MigrationCondition> reader = _MigrationConditionReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get type => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get status => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);
  apimachinery_pkg_apis_meta_v1.Time? get lastUpdateTime => apimachinery_pkg_apis_meta_v1.Time.reader.vTableGetNullable(_bc, _bcOffset, 8);
  String? get reason => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 10);
  String? get message => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 12);

  @override
  String toString() {
    return 'MigrationCondition{type: ${type}, status: ${status}, lastUpdateTime: ${lastUpdateTime}, reason: ${reason}, message: ${message}}';
  }
}

class _MigrationConditionReader extends fb.TableReader<MigrationCondition> {
  const _MigrationConditionReader();

  @override
  MigrationCondition createObject(fb.BufferContext bc, int offset) => 
    MigrationCondition._(bc, offset);
}

class MigrationConditionBuilder {
  MigrationConditionBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(5);
  }

  int addTypeOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addStatusOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addLastUpdateTimeOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }
  int addReasonOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }
  int addMessageOffset(int? offset) {
    fbBuilder.addOffset(4, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class MigrationConditionObjectBuilder extends fb.ObjectBuilder {
  final String? _type;
  final String? _status;
  final apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? _lastUpdateTime;
  final String? _reason;
  final String? _message;

  MigrationConditionObjectBuilder({
    String? type,
    String? status,
    apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? lastUpdateTime,
    String? reason,
    String? message,
  })
      : _type = type,
        _status = status,
        _lastUpdateTime = lastUpdateTime,
        _reason = reason,
        _message = message;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? typeOffset = _type == null ? null
        : fbBuilder.writeString(_type!);
    final int? statusOffset = _status == null ? null
        : fbBuilder.writeString(_status!);
    final int? lastUpdateTimeOffset = _lastUpdateTime?.getOrCreateOffset(fbBuilder);
    final int? reasonOffset = _reason == null ? null
        : fbBuilder.writeString(_reason!);
    final int? messageOffset = _message == null ? null
        : fbBuilder.writeString(_message!);
    fbBuilder.startTable(5);
    fbBuilder.addOffset(0, typeOffset);
    fbBuilder.addOffset(1, statusOffset);
    fbBuilder.addOffset(2, lastUpdateTimeOffset);
    fbBuilder.addOffset(3, reasonOffset);
    fbBuilder.addOffset(4, messageOffset);
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
class StorageVersionMigration {
  StorageVersionMigration._(this._bc, this._bcOffset);
  factory StorageVersionMigration(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<StorageVersionMigration> reader = _StorageVersionMigrationReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  StorageVersionMigrationSpec? get spec => StorageVersionMigrationSpec.reader.vTableGetNullable(_bc, _bcOffset, 6);
  StorageVersionMigrationStatus? get status => StorageVersionMigrationStatus.reader.vTableGetNullable(_bc, _bcOffset, 8);

  @override
  String toString() {
    return 'StorageVersionMigration{metadata: ${metadata}, spec: ${spec}, status: ${status}}';
  }
}

class _StorageVersionMigrationReader extends fb.TableReader<StorageVersionMigration> {
  const _StorageVersionMigrationReader();

  @override
  StorageVersionMigration createObject(fb.BufferContext bc, int offset) => 
    StorageVersionMigration._(bc, offset);
}

class StorageVersionMigrationBuilder {
  StorageVersionMigrationBuilder(this.fbBuilder);

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

class StorageVersionMigrationObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final StorageVersionMigrationSpecObjectBuilder? _spec;
  final StorageVersionMigrationStatusObjectBuilder? _status;

  StorageVersionMigrationObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    StorageVersionMigrationSpecObjectBuilder? spec,
    StorageVersionMigrationStatusObjectBuilder? status,
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
class StorageVersionMigrationList {
  StorageVersionMigrationList._(this._bc, this._bcOffset);
  factory StorageVersionMigrationList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<StorageVersionMigrationList> reader = _StorageVersionMigrationListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<StorageVersionMigration>? get items => const fb.ListReader<StorageVersionMigration>(StorageVersionMigration.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'StorageVersionMigrationList{metadata: ${metadata}, items: ${items}}';
  }
}

class _StorageVersionMigrationListReader extends fb.TableReader<StorageVersionMigrationList> {
  const _StorageVersionMigrationListReader();

  @override
  StorageVersionMigrationList createObject(fb.BufferContext bc, int offset) => 
    StorageVersionMigrationList._(bc, offset);
}

class StorageVersionMigrationListBuilder {
  StorageVersionMigrationListBuilder(this.fbBuilder);

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

class StorageVersionMigrationListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<StorageVersionMigrationObjectBuilder>? _items;

  StorageVersionMigrationListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<StorageVersionMigrationObjectBuilder>? items,
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
class StorageVersionMigrationSpec {
  StorageVersionMigrationSpec._(this._bc, this._bcOffset);
  factory StorageVersionMigrationSpec(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<StorageVersionMigrationSpec> reader = _StorageVersionMigrationSpecReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  GroupVersionResource? get resource => GroupVersionResource.reader.vTableGetNullable(_bc, _bcOffset, 4);
  String? get continueToken => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'StorageVersionMigrationSpec{resource: ${resource}, continueToken: ${continueToken}}';
  }
}

class _StorageVersionMigrationSpecReader extends fb.TableReader<StorageVersionMigrationSpec> {
  const _StorageVersionMigrationSpecReader();

  @override
  StorageVersionMigrationSpec createObject(fb.BufferContext bc, int offset) => 
    StorageVersionMigrationSpec._(bc, offset);
}

class StorageVersionMigrationSpecBuilder {
  StorageVersionMigrationSpecBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addResourceOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addContinueTokenOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class StorageVersionMigrationSpecObjectBuilder extends fb.ObjectBuilder {
  final GroupVersionResourceObjectBuilder? _resource;
  final String? _continueToken;

  StorageVersionMigrationSpecObjectBuilder({
    GroupVersionResourceObjectBuilder? resource,
    String? continueToken,
  })
      : _resource = resource,
        _continueToken = continueToken;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? resourceOffset = _resource?.getOrCreateOffset(fbBuilder);
    final int? continueTokenOffset = _continueToken == null ? null
        : fbBuilder.writeString(_continueToken!);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, resourceOffset);
    fbBuilder.addOffset(1, continueTokenOffset);
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
class StorageVersionMigrationStatus {
  StorageVersionMigrationStatus._(this._bc, this._bcOffset);
  factory StorageVersionMigrationStatus(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<StorageVersionMigrationStatus> reader = _StorageVersionMigrationStatusReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  List<MigrationCondition>? get conditions => const fb.ListReader<MigrationCondition>(MigrationCondition.reader).vTableGetNullable(_bc, _bcOffset, 4);
  String? get resourceVersion => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'StorageVersionMigrationStatus{conditions: ${conditions}, resourceVersion: ${resourceVersion}}';
  }
}

class _StorageVersionMigrationStatusReader extends fb.TableReader<StorageVersionMigrationStatus> {
  const _StorageVersionMigrationStatusReader();

  @override
  StorageVersionMigrationStatus createObject(fb.BufferContext bc, int offset) => 
    StorageVersionMigrationStatus._(bc, offset);
}

class StorageVersionMigrationStatusBuilder {
  StorageVersionMigrationStatusBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addConditionsOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addResourceVersionOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class StorageVersionMigrationStatusObjectBuilder extends fb.ObjectBuilder {
  final List<MigrationConditionObjectBuilder>? _conditions;
  final String? _resourceVersion;

  StorageVersionMigrationStatusObjectBuilder({
    List<MigrationConditionObjectBuilder>? conditions,
    String? resourceVersion,
  })
      : _conditions = conditions,
        _resourceVersion = resourceVersion;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? conditionsOffset = _conditions == null ? null
        : fbBuilder.writeList(_conditions!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    final int? resourceVersionOffset = _resourceVersion == null ? null
        : fbBuilder.writeString(_resourceVersion!);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, conditionsOffset);
    fbBuilder.addOffset(1, resourceVersionOffset);
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
