// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library api.core.v1.service_spec_;

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
import './generated_api.core.v1.volume_resource_requirements__generated.dart' as api_core_v1_volume_resource_requirements_;
import './generated_api.networking.v1_beta1_generated.dart' as api_networking_v1_beta1;
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
import './generated_apimachinery.pkg.util.intstr_generated.dart' as apimachinery_pkg_util_intstr;

class SelectorEntry {
  SelectorEntry._(this._bc, this._bcOffset);
  factory SelectorEntry(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<SelectorEntry> reader = _SelectorEntryReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get key => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get value => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'SelectorEntry{key: ${key}, value: ${value}}';
  }
}

class _SelectorEntryReader extends fb.TableReader<SelectorEntry> {
  const _SelectorEntryReader();

  @override
  SelectorEntry createObject(fb.BufferContext bc, int offset) => 
    SelectorEntry._(bc, offset);
}

class SelectorEntryBuilder {
  SelectorEntryBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addKeyOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addValueOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class SelectorEntryObjectBuilder extends fb.ObjectBuilder {
  final String? _key;
  final String? _value;

  SelectorEntryObjectBuilder({
    String? key,
    String? value,
  })
      : _key = key,
        _value = value;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? keyOffset = _key == null ? null
        : fbBuilder.writeString(_key!);
    final int? valueOffset = _value == null ? null
        : fbBuilder.writeString(_value!);
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, keyOffset);
    fbBuilder.addOffset(1, valueOffset);
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
