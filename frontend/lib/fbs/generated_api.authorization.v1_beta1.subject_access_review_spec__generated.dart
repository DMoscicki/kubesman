// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library api.authorization.v1_beta1.subject_access_review_spec_;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;

import './generated_api.authorization.v1_beta1_generated.dart' as api_authorization_v1_beta1;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

class ExtraEntry {
  ExtraEntry._(this._bc, this._bcOffset);
  factory ExtraEntry(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<ExtraEntry> reader = _ExtraEntryReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get key => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  api_authorization_v1_beta1.ExtraValue? get value => api_authorization_v1_beta1.ExtraValue.reader.vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'ExtraEntry{key: ${key}, value: ${value}}';
  }
}

class _ExtraEntryReader extends fb.TableReader<ExtraEntry> {
  const _ExtraEntryReader();

  @override
  ExtraEntry createObject(fb.BufferContext bc, int offset) => 
    ExtraEntry._(bc, offset);
}

class ExtraEntryBuilder {
  ExtraEntryBuilder(this.fbBuilder);

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

class ExtraEntryObjectBuilder extends fb.ObjectBuilder {
  final String? _key;
  final api_authorization_v1_beta1.ExtraValueObjectBuilder? _value;

  ExtraEntryObjectBuilder({
    String? key,
    api_authorization_v1_beta1.ExtraValueObjectBuilder? value,
  })
      : _key = key,
        _value = value;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? keyOffset = _key == null ? null
        : fbBuilder.writeString(_key!);
    final int? valueOffset = _value?.getOrCreateOffset(fbBuilder);
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
