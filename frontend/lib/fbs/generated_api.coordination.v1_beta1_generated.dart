// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library api.coordination.v1_beta1;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;

import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

class Lease {
  Lease._(this._bc, this._bcOffset);
  factory Lease(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<Lease> reader = _LeaseReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  LeaseSpec? get spec => LeaseSpec.reader.vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'Lease{metadata: ${metadata}, spec: ${spec}}';
  }
}

class _LeaseReader extends fb.TableReader<Lease> {
  const _LeaseReader();

  @override
  Lease createObject(fb.BufferContext bc, int offset) => 
    Lease._(bc, offset);
}

class LeaseBuilder {
  LeaseBuilder(this.fbBuilder);

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

class LeaseObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final LeaseSpecObjectBuilder? _spec;

  LeaseObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    LeaseSpecObjectBuilder? spec,
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
class LeaseList {
  LeaseList._(this._bc, this._bcOffset);
  factory LeaseList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<LeaseList> reader = _LeaseListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<Lease>? get items => const fb.ListReader<Lease>(Lease.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'LeaseList{metadata: ${metadata}, items: ${items}}';
  }
}

class _LeaseListReader extends fb.TableReader<LeaseList> {
  const _LeaseListReader();

  @override
  LeaseList createObject(fb.BufferContext bc, int offset) => 
    LeaseList._(bc, offset);
}

class LeaseListBuilder {
  LeaseListBuilder(this.fbBuilder);

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

class LeaseListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<LeaseObjectBuilder>? _items;

  LeaseListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<LeaseObjectBuilder>? items,
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
class LeaseSpec {
  LeaseSpec._(this._bc, this._bcOffset);
  factory LeaseSpec(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<LeaseSpec> reader = _LeaseSpecReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get holderIdentity => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  int get leaseDurationSeconds => const fb.Int32Reader().vTableGet(_bc, _bcOffset, 6, 0);
  apimachinery_pkg_apis_meta_v1.MicroTime? get acquireTime => apimachinery_pkg_apis_meta_v1.MicroTime.reader.vTableGetNullable(_bc, _bcOffset, 8);
  apimachinery_pkg_apis_meta_v1.MicroTime? get renewTime => apimachinery_pkg_apis_meta_v1.MicroTime.reader.vTableGetNullable(_bc, _bcOffset, 10);
  int get leaseTransitions => const fb.Int32Reader().vTableGet(_bc, _bcOffset, 12, 0);

  @override
  String toString() {
    return 'LeaseSpec{holderIdentity: ${holderIdentity}, leaseDurationSeconds: ${leaseDurationSeconds}, acquireTime: ${acquireTime}, renewTime: ${renewTime}, leaseTransitions: ${leaseTransitions}}';
  }
}

class _LeaseSpecReader extends fb.TableReader<LeaseSpec> {
  const _LeaseSpecReader();

  @override
  LeaseSpec createObject(fb.BufferContext bc, int offset) => 
    LeaseSpec._(bc, offset);
}

class LeaseSpecBuilder {
  LeaseSpecBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(5);
  }

  int addHolderIdentityOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addLeaseDurationSeconds(int? leaseDurationSeconds) {
    fbBuilder.addInt32(1, leaseDurationSeconds);
    return fbBuilder.offset;
  }
  int addAcquireTimeOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }
  int addRenewTimeOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }
  int addLeaseTransitions(int? leaseTransitions) {
    fbBuilder.addInt32(4, leaseTransitions);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class LeaseSpecObjectBuilder extends fb.ObjectBuilder {
  final String? _holderIdentity;
  final int? _leaseDurationSeconds;
  final apimachinery_pkg_apis_meta_v1.MicroTimeObjectBuilder? _acquireTime;
  final apimachinery_pkg_apis_meta_v1.MicroTimeObjectBuilder? _renewTime;
  final int? _leaseTransitions;

  LeaseSpecObjectBuilder({
    String? holderIdentity,
    int? leaseDurationSeconds,
    apimachinery_pkg_apis_meta_v1.MicroTimeObjectBuilder? acquireTime,
    apimachinery_pkg_apis_meta_v1.MicroTimeObjectBuilder? renewTime,
    int? leaseTransitions,
  })
      : _holderIdentity = holderIdentity,
        _leaseDurationSeconds = leaseDurationSeconds,
        _acquireTime = acquireTime,
        _renewTime = renewTime,
        _leaseTransitions = leaseTransitions;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? holderIdentityOffset = _holderIdentity == null ? null
        : fbBuilder.writeString(_holderIdentity!);
    final int? acquireTimeOffset = _acquireTime?.getOrCreateOffset(fbBuilder);
    final int? renewTimeOffset = _renewTime?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(5);
    fbBuilder.addOffset(0, holderIdentityOffset);
    fbBuilder.addInt32(1, _leaseDurationSeconds);
    fbBuilder.addOffset(2, acquireTimeOffset);
    fbBuilder.addOffset(3, renewTimeOffset);
    fbBuilder.addInt32(4, _leaseTransitions);
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
