// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library api.node.v1_beta1;

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
import './generated_api.node.v1_beta1.overhead__generated.dart' as api_node_v1_beta1_overhead_;
import './generated_api.node.v1_beta1.scheduling__generated.dart' as api_node_v1_beta1_scheduling_;
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
import './generated_apimachinery.pkg.api.resource_generated.dart' as apimachinery_pkg_api_resource;
import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

class Overhead {
  Overhead._(this._bc, this._bcOffset);
  factory Overhead(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<Overhead> reader = _OverheadReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  List<api_node_v1_beta1_overhead_.PodFixedEntry>? get podFixed => const fb.ListReader<api_node_v1_beta1_overhead_.PodFixedEntry>(api_node_v1_beta1_overhead_.PodFixedEntry.reader).vTableGetNullable(_bc, _bcOffset, 4);

  @override
  String toString() {
    return 'Overhead{podFixed: ${podFixed}}';
  }
}

class _OverheadReader extends fb.TableReader<Overhead> {
  const _OverheadReader();

  @override
  Overhead createObject(fb.BufferContext bc, int offset) => 
    Overhead._(bc, offset);
}

class OverheadBuilder {
  OverheadBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(1);
  }

  int addPodFixedOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class OverheadObjectBuilder extends fb.ObjectBuilder {
  final List<api_node_v1_beta1_overhead_.PodFixedEntryObjectBuilder>? _podFixed;

  OverheadObjectBuilder({
    List<api_node_v1_beta1_overhead_.PodFixedEntryObjectBuilder>? podFixed,
  })
      : _podFixed = podFixed;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? podFixedOffset = _podFixed == null ? null
        : fbBuilder.writeList(_podFixed!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(1);
    fbBuilder.addOffset(0, podFixedOffset);
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
class RuntimeClass {
  RuntimeClass._(this._bc, this._bcOffset);
  factory RuntimeClass(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<RuntimeClass> reader = _RuntimeClassReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  String? get handler => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);
  Overhead? get overhead => Overhead.reader.vTableGetNullable(_bc, _bcOffset, 8);
  Scheduling? get scheduling => Scheduling.reader.vTableGetNullable(_bc, _bcOffset, 10);

  @override
  String toString() {
    return 'RuntimeClass{metadata: ${metadata}, handler: ${handler}, overhead: ${overhead}, scheduling: ${scheduling}}';
  }
}

class _RuntimeClassReader extends fb.TableReader<RuntimeClass> {
  const _RuntimeClassReader();

  @override
  RuntimeClass createObject(fb.BufferContext bc, int offset) => 
    RuntimeClass._(bc, offset);
}

class RuntimeClassBuilder {
  RuntimeClassBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(4);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addHandlerOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addOverheadOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }
  int addSchedulingOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class RuntimeClassObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final String? _handler;
  final OverheadObjectBuilder? _overhead;
  final SchedulingObjectBuilder? _scheduling;

  RuntimeClassObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    String? handler,
    OverheadObjectBuilder? overhead,
    SchedulingObjectBuilder? scheduling,
  })
      : _metadata = metadata,
        _handler = handler,
        _overhead = overhead,
        _scheduling = scheduling;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? handlerOffset = _handler == null ? null
        : fbBuilder.writeString(_handler!);
    final int? overheadOffset = _overhead?.getOrCreateOffset(fbBuilder);
    final int? schedulingOffset = _scheduling?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(4);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, handlerOffset);
    fbBuilder.addOffset(2, overheadOffset);
    fbBuilder.addOffset(3, schedulingOffset);
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
class RuntimeClassList {
  RuntimeClassList._(this._bc, this._bcOffset);
  factory RuntimeClassList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<RuntimeClassList> reader = _RuntimeClassListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<RuntimeClass>? get items => const fb.ListReader<RuntimeClass>(RuntimeClass.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'RuntimeClassList{metadata: ${metadata}, items: ${items}}';
  }
}

class _RuntimeClassListReader extends fb.TableReader<RuntimeClassList> {
  const _RuntimeClassListReader();

  @override
  RuntimeClassList createObject(fb.BufferContext bc, int offset) => 
    RuntimeClassList._(bc, offset);
}

class RuntimeClassListBuilder {
  RuntimeClassListBuilder(this.fbBuilder);

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

class RuntimeClassListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<RuntimeClassObjectBuilder>? _items;

  RuntimeClassListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<RuntimeClassObjectBuilder>? items,
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
class Scheduling {
  Scheduling._(this._bc, this._bcOffset);
  factory Scheduling(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<Scheduling> reader = _SchedulingReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  List<api_node_v1_beta1_scheduling_.NodeSelectorEntry>? get nodeSelector => const fb.ListReader<api_node_v1_beta1_scheduling_.NodeSelectorEntry>(api_node_v1_beta1_scheduling_.NodeSelectorEntry.reader).vTableGetNullable(_bc, _bcOffset, 4);
  List<api_core_v1.Toleration>? get tolerations => const fb.ListReader<api_core_v1.Toleration>(api_core_v1.Toleration.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'Scheduling{nodeSelector: ${nodeSelector}, tolerations: ${tolerations}}';
  }
}

class _SchedulingReader extends fb.TableReader<Scheduling> {
  const _SchedulingReader();

  @override
  Scheduling createObject(fb.BufferContext bc, int offset) => 
    Scheduling._(bc, offset);
}

class SchedulingBuilder {
  SchedulingBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addNodeSelectorOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addTolerationsOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class SchedulingObjectBuilder extends fb.ObjectBuilder {
  final List<api_node_v1_beta1_scheduling_.NodeSelectorEntryObjectBuilder>? _nodeSelector;
  final List<api_core_v1.TolerationObjectBuilder>? _tolerations;

  SchedulingObjectBuilder({
    List<api_node_v1_beta1_scheduling_.NodeSelectorEntryObjectBuilder>? nodeSelector,
    List<api_core_v1.TolerationObjectBuilder>? tolerations,
  })
      : _nodeSelector = nodeSelector,
        _tolerations = tolerations;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? nodeSelectorOffset = _nodeSelector == null ? null
        : fbBuilder.writeList(_nodeSelector!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    final int? tolerationsOffset = _tolerations == null ? null
        : fbBuilder.writeList(_tolerations!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, nodeSelectorOffset);
    fbBuilder.addOffset(1, tolerationsOffset);
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
