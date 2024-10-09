// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library apimachinery.pkg.apis.meta.v1.label_selector_;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;

import './generated_api.flowcontrol.v1_beta2_generated.dart' as api_flowcontrol_v1_beta2;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

class MatchLabelsEntry {
  MatchLabelsEntry._(this._bc, this._bcOffset);
  factory MatchLabelsEntry(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<MatchLabelsEntry> reader = _MatchLabelsEntryReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get key => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get value => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'MatchLabelsEntry{key: ${key}, value: ${value}}';
  }
}

class _MatchLabelsEntryReader extends fb.TableReader<MatchLabelsEntry> {
  const _MatchLabelsEntryReader();

  @override
  MatchLabelsEntry createObject(fb.BufferContext bc, int offset) => 
    MatchLabelsEntry._(bc, offset);
}

class MatchLabelsEntryBuilder {
  MatchLabelsEntryBuilder(this.fbBuilder);

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

class MatchLabelsEntryObjectBuilder extends fb.ObjectBuilder {
  final String? _key;
  final String? _value;

  MatchLabelsEntryObjectBuilder({
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
