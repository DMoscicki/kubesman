// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library metrics.pkg.apis.metrics.v1_alpha1;

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
import './generated_metrics.pkg.apis.metrics.v1_alpha1.container_metrics__generated.dart' as metrics_pkg_apis_metrics_v1_alpha1_container_metrics_;
import './generated_metrics.pkg.apis.metrics.v1_alpha1.node_metrics__generated.dart' as metrics_pkg_apis_metrics_v1_alpha1_node_metrics_;

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

class ContainerMetrics {
  ContainerMetrics._(this._bc, this._bcOffset);
  factory ContainerMetrics(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<ContainerMetrics> reader = _ContainerMetricsReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get name => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  List<metrics_pkg_apis_metrics_v1_alpha1_container_metrics_.UsageEntry>? get usage => const fb.ListReader<metrics_pkg_apis_metrics_v1_alpha1_container_metrics_.UsageEntry>(metrics_pkg_apis_metrics_v1_alpha1_container_metrics_.UsageEntry.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'ContainerMetrics{name: ${name}, usage: ${usage}}';
  }
}

class _ContainerMetricsReader extends fb.TableReader<ContainerMetrics> {
  const _ContainerMetricsReader();

  @override
  ContainerMetrics createObject(fb.BufferContext bc, int offset) => 
    ContainerMetrics._(bc, offset);
}

class ContainerMetricsBuilder {
  ContainerMetricsBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addNameOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addUsageOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class ContainerMetricsObjectBuilder extends fb.ObjectBuilder {
  final String? _name;
  final List<metrics_pkg_apis_metrics_v1_alpha1_container_metrics_.UsageEntryObjectBuilder>? _usage;

  ContainerMetricsObjectBuilder({
    String? name,
    List<metrics_pkg_apis_metrics_v1_alpha1_container_metrics_.UsageEntryObjectBuilder>? usage,
  })
      : _name = name,
        _usage = usage;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? nameOffset = _name == null ? null
        : fbBuilder.writeString(_name!);
    final int? usageOffset = _usage == null ? null
        : fbBuilder.writeList(_usage!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, nameOffset);
    fbBuilder.addOffset(1, usageOffset);
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
class NodeMetrics {
  NodeMetrics._(this._bc, this._bcOffset);
  factory NodeMetrics(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<NodeMetrics> reader = _NodeMetricsReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  apimachinery_pkg_apis_meta_v1.Time? get timestamp => apimachinery_pkg_apis_meta_v1.Time.reader.vTableGetNullable(_bc, _bcOffset, 6);
  apimachinery_pkg_apis_meta_v1.Duration? get window => apimachinery_pkg_apis_meta_v1.Duration.reader.vTableGetNullable(_bc, _bcOffset, 8);
  List<metrics_pkg_apis_metrics_v1_alpha1_node_metrics_.UsageEntry>? get usage => const fb.ListReader<metrics_pkg_apis_metrics_v1_alpha1_node_metrics_.UsageEntry>(metrics_pkg_apis_metrics_v1_alpha1_node_metrics_.UsageEntry.reader).vTableGetNullable(_bc, _bcOffset, 10);

  @override
  String toString() {
    return 'NodeMetrics{metadata: ${metadata}, timestamp: ${timestamp}, window: ${window}, usage: ${usage}}';
  }
}

class _NodeMetricsReader extends fb.TableReader<NodeMetrics> {
  const _NodeMetricsReader();

  @override
  NodeMetrics createObject(fb.BufferContext bc, int offset) => 
    NodeMetrics._(bc, offset);
}

class NodeMetricsBuilder {
  NodeMetricsBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(4);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addTimestampOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addWindowOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }
  int addUsageOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class NodeMetricsObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? _timestamp;
  final apimachinery_pkg_apis_meta_v1.DurationObjectBuilder? _window;
  final List<metrics_pkg_apis_metrics_v1_alpha1_node_metrics_.UsageEntryObjectBuilder>? _usage;

  NodeMetricsObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? timestamp,
    apimachinery_pkg_apis_meta_v1.DurationObjectBuilder? window,
    List<metrics_pkg_apis_metrics_v1_alpha1_node_metrics_.UsageEntryObjectBuilder>? usage,
  })
      : _metadata = metadata,
        _timestamp = timestamp,
        _window = window,
        _usage = usage;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? timestampOffset = _timestamp?.getOrCreateOffset(fbBuilder);
    final int? windowOffset = _window?.getOrCreateOffset(fbBuilder);
    final int? usageOffset = _usage == null ? null
        : fbBuilder.writeList(_usage!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(4);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, timestampOffset);
    fbBuilder.addOffset(2, windowOffset);
    fbBuilder.addOffset(3, usageOffset);
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
class NodeMetricsList {
  NodeMetricsList._(this._bc, this._bcOffset);
  factory NodeMetricsList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<NodeMetricsList> reader = _NodeMetricsListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<NodeMetrics>? get items => const fb.ListReader<NodeMetrics>(NodeMetrics.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'NodeMetricsList{metadata: ${metadata}, items: ${items}}';
  }
}

class _NodeMetricsListReader extends fb.TableReader<NodeMetricsList> {
  const _NodeMetricsListReader();

  @override
  NodeMetricsList createObject(fb.BufferContext bc, int offset) => 
    NodeMetricsList._(bc, offset);
}

class NodeMetricsListBuilder {
  NodeMetricsListBuilder(this.fbBuilder);

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

class NodeMetricsListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<NodeMetricsObjectBuilder>? _items;

  NodeMetricsListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<NodeMetricsObjectBuilder>? items,
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
class PodMetrics {
  PodMetrics._(this._bc, this._bcOffset);
  factory PodMetrics(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<PodMetrics> reader = _PodMetricsReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  apimachinery_pkg_apis_meta_v1.Time? get timestamp => apimachinery_pkg_apis_meta_v1.Time.reader.vTableGetNullable(_bc, _bcOffset, 6);
  apimachinery_pkg_apis_meta_v1.Duration? get window => apimachinery_pkg_apis_meta_v1.Duration.reader.vTableGetNullable(_bc, _bcOffset, 8);
  List<ContainerMetrics>? get containers => const fb.ListReader<ContainerMetrics>(ContainerMetrics.reader).vTableGetNullable(_bc, _bcOffset, 10);

  @override
  String toString() {
    return 'PodMetrics{metadata: ${metadata}, timestamp: ${timestamp}, window: ${window}, containers: ${containers}}';
  }
}

class _PodMetricsReader extends fb.TableReader<PodMetrics> {
  const _PodMetricsReader();

  @override
  PodMetrics createObject(fb.BufferContext bc, int offset) => 
    PodMetrics._(bc, offset);
}

class PodMetricsBuilder {
  PodMetricsBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(4);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addTimestampOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addWindowOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }
  int addContainersOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class PodMetricsObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? _timestamp;
  final apimachinery_pkg_apis_meta_v1.DurationObjectBuilder? _window;
  final List<ContainerMetricsObjectBuilder>? _containers;

  PodMetricsObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? timestamp,
    apimachinery_pkg_apis_meta_v1.DurationObjectBuilder? window,
    List<ContainerMetricsObjectBuilder>? containers,
  })
      : _metadata = metadata,
        _timestamp = timestamp,
        _window = window,
        _containers = containers;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? timestampOffset = _timestamp?.getOrCreateOffset(fbBuilder);
    final int? windowOffset = _window?.getOrCreateOffset(fbBuilder);
    final int? containersOffset = _containers == null ? null
        : fbBuilder.writeList(_containers!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(4);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, timestampOffset);
    fbBuilder.addOffset(2, windowOffset);
    fbBuilder.addOffset(3, containersOffset);
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
class PodMetricsList {
  PodMetricsList._(this._bc, this._bcOffset);
  factory PodMetricsList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<PodMetricsList> reader = _PodMetricsListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<PodMetrics>? get items => const fb.ListReader<PodMetrics>(PodMetrics.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'PodMetricsList{metadata: ${metadata}, items: ${items}}';
  }
}

class _PodMetricsListReader extends fb.TableReader<PodMetricsList> {
  const _PodMetricsListReader();

  @override
  PodMetricsList createObject(fb.BufferContext bc, int offset) => 
    PodMetricsList._(bc, offset);
}

class PodMetricsListBuilder {
  PodMetricsListBuilder(this.fbBuilder);

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

class PodMetricsListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<PodMetricsObjectBuilder>? _items;

  PodMetricsListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<PodMetricsObjectBuilder>? items,
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
