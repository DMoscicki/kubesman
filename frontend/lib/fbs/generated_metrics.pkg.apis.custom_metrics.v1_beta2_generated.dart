// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library metrics.pkg.apis.custom_metrics.v1_beta2;

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
import './generated_apimachinery.pkg.api.resource_generated.dart' as apimachinery_pkg_api_resource;
import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

class MetricIdentifier {
  MetricIdentifier._(this._bc, this._bcOffset);
  factory MetricIdentifier(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<MetricIdentifier> reader = _MetricIdentifierReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get name => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  apimachinery_pkg_apis_meta_v1.LabelSelector? get selector => apimachinery_pkg_apis_meta_v1.LabelSelector.reader.vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'MetricIdentifier{name: ${name}, selector: ${selector}}';
  }
}

class _MetricIdentifierReader extends fb.TableReader<MetricIdentifier> {
  const _MetricIdentifierReader();

  @override
  MetricIdentifier createObject(fb.BufferContext bc, int offset) => 
    MetricIdentifier._(bc, offset);
}

class MetricIdentifierBuilder {
  MetricIdentifierBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addNameOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addSelectorOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class MetricIdentifierObjectBuilder extends fb.ObjectBuilder {
  final String? _name;
  final apimachinery_pkg_apis_meta_v1.LabelSelectorObjectBuilder? _selector;

  MetricIdentifierObjectBuilder({
    String? name,
    apimachinery_pkg_apis_meta_v1.LabelSelectorObjectBuilder? selector,
  })
      : _name = name,
        _selector = selector;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? nameOffset = _name == null ? null
        : fbBuilder.writeString(_name!);
    final int? selectorOffset = _selector?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, nameOffset);
    fbBuilder.addOffset(1, selectorOffset);
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
class MetricListOptions {
  MetricListOptions._(this._bc, this._bcOffset);
  factory MetricListOptions(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<MetricListOptions> reader = _MetricListOptionsReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get labelSelector => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get metricLabelSelector => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'MetricListOptions{labelSelector: ${labelSelector}, metricLabelSelector: ${metricLabelSelector}}';
  }
}

class _MetricListOptionsReader extends fb.TableReader<MetricListOptions> {
  const _MetricListOptionsReader();

  @override
  MetricListOptions createObject(fb.BufferContext bc, int offset) => 
    MetricListOptions._(bc, offset);
}

class MetricListOptionsBuilder {
  MetricListOptionsBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addLabelSelectorOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addMetricLabelSelectorOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class MetricListOptionsObjectBuilder extends fb.ObjectBuilder {
  final String? _labelSelector;
  final String? _metricLabelSelector;

  MetricListOptionsObjectBuilder({
    String? labelSelector,
    String? metricLabelSelector,
  })
      : _labelSelector = labelSelector,
        _metricLabelSelector = metricLabelSelector;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? labelSelectorOffset = _labelSelector == null ? null
        : fbBuilder.writeString(_labelSelector!);
    final int? metricLabelSelectorOffset = _metricLabelSelector == null ? null
        : fbBuilder.writeString(_metricLabelSelector!);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, labelSelectorOffset);
    fbBuilder.addOffset(1, metricLabelSelectorOffset);
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
class MetricValue {
  MetricValue._(this._bc, this._bcOffset);
  factory MetricValue(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<MetricValue> reader = _MetricValueReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  api_core_v1.ObjectReference? get describedObject => api_core_v1.ObjectReference.reader.vTableGetNullable(_bc, _bcOffset, 4);
  MetricIdentifier? get metric => MetricIdentifier.reader.vTableGetNullable(_bc, _bcOffset, 6);
  apimachinery_pkg_apis_meta_v1.Time? get timestamp => apimachinery_pkg_apis_meta_v1.Time.reader.vTableGetNullable(_bc, _bcOffset, 8);
  int get windowSeconds => const fb.Int64Reader().vTableGet(_bc, _bcOffset, 10, 0);
  apimachinery_pkg_api_resource.Quantity? get value => apimachinery_pkg_api_resource.Quantity.reader.vTableGetNullable(_bc, _bcOffset, 12);

  @override
  String toString() {
    return 'MetricValue{describedObject: ${describedObject}, metric: ${metric}, timestamp: ${timestamp}, windowSeconds: ${windowSeconds}, value: ${value}}';
  }
}

class _MetricValueReader extends fb.TableReader<MetricValue> {
  const _MetricValueReader();

  @override
  MetricValue createObject(fb.BufferContext bc, int offset) => 
    MetricValue._(bc, offset);
}

class MetricValueBuilder {
  MetricValueBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(5);
  }

  int addDescribedObjectOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addMetricOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addTimestampOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }
  int addWindowSeconds(int? windowSeconds) {
    fbBuilder.addInt64(3, windowSeconds);
    return fbBuilder.offset;
  }
  int addValueOffset(int? offset) {
    fbBuilder.addOffset(4, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class MetricValueObjectBuilder extends fb.ObjectBuilder {
  final api_core_v1.ObjectReferenceObjectBuilder? _describedObject;
  final MetricIdentifierObjectBuilder? _metric;
  final apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? _timestamp;
  final int? _windowSeconds;
  final apimachinery_pkg_api_resource.QuantityObjectBuilder? _value;

  MetricValueObjectBuilder({
    api_core_v1.ObjectReferenceObjectBuilder? describedObject,
    MetricIdentifierObjectBuilder? metric,
    apimachinery_pkg_apis_meta_v1.TimeObjectBuilder? timestamp,
    int? windowSeconds,
    apimachinery_pkg_api_resource.QuantityObjectBuilder? value,
  })
      : _describedObject = describedObject,
        _metric = metric,
        _timestamp = timestamp,
        _windowSeconds = windowSeconds,
        _value = value;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? describedObjectOffset = _describedObject?.getOrCreateOffset(fbBuilder);
    final int? metricOffset = _metric?.getOrCreateOffset(fbBuilder);
    final int? timestampOffset = _timestamp?.getOrCreateOffset(fbBuilder);
    final int? valueOffset = _value?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(5);
    fbBuilder.addOffset(0, describedObjectOffset);
    fbBuilder.addOffset(1, metricOffset);
    fbBuilder.addOffset(2, timestampOffset);
    fbBuilder.addInt64(3, _windowSeconds);
    fbBuilder.addOffset(4, valueOffset);
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
class MetricValueList {
  MetricValueList._(this._bc, this._bcOffset);
  factory MetricValueList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<MetricValueList> reader = _MetricValueListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<MetricValue>? get items => const fb.ListReader<MetricValue>(MetricValue.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'MetricValueList{metadata: ${metadata}, items: ${items}}';
  }
}

class _MetricValueListReader extends fb.TableReader<MetricValueList> {
  const _MetricValueListReader();

  @override
  MetricValueList createObject(fb.BufferContext bc, int offset) => 
    MetricValueList._(bc, offset);
}

class MetricValueListBuilder {
  MetricValueListBuilder(this.fbBuilder);

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

class MetricValueListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<MetricValueObjectBuilder>? _items;

  MetricValueListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<MetricValueObjectBuilder>? items,
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
