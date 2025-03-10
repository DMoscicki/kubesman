// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library refresh;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;


class RefreshResponse {
  RefreshResponse._(this._bc, this._bcOffset);
  factory RefreshResponse(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<RefreshResponse> reader = _RefreshResponseReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get grantType => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get refreshToken => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);
  String? get scope => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 8);
  List<int>? get clientId => const fb.Uint8ListReader().vTableGetNullable(_bc, _bcOffset, 10);
  List<int>? get clientSecret => const fb.Uint8ListReader().vTableGetNullable(_bc, _bcOffset, 12);

  @override
  String toString() {
    return 'RefreshResponse{grantType: ${grantType}, refreshToken: ${refreshToken}, scope: ${scope}, clientId: ${clientId}, clientSecret: ${clientSecret}}';
  }
}

class _RefreshResponseReader extends fb.TableReader<RefreshResponse> {
  const _RefreshResponseReader();

  @override
  RefreshResponse createObject(fb.BufferContext bc, int offset) => 
    RefreshResponse._(bc, offset);
}

class RefreshResponseBuilder {
  RefreshResponseBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(5);
  }

  int addGrantTypeOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addRefreshTokenOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addScopeOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }
  int addClientIdOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }
  int addClientSecretOffset(int? offset) {
    fbBuilder.addOffset(4, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class RefreshResponseObjectBuilder extends fb.ObjectBuilder {
  final String? _grantType;
  final String? _refreshToken;
  final String? _scope;
  final List<int>? _clientId;
  final List<int>? _clientSecret;

  RefreshResponseObjectBuilder({
    String? grantType,
    String? refreshToken,
    String? scope,
    List<int>? clientId,
    List<int>? clientSecret,
  })
      : _grantType = grantType,
        _refreshToken = refreshToken,
        _scope = scope,
        _clientId = clientId,
        _clientSecret = clientSecret;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? grantTypeOffset = _grantType == null ? null
        : fbBuilder.writeString(_grantType!);
    final int? refreshTokenOffset = _refreshToken == null ? null
        : fbBuilder.writeString(_refreshToken!);
    final int? scopeOffset = _scope == null ? null
        : fbBuilder.writeString(_scope!);
    final int? clientIdOffset = _clientId == null ? null
        : fbBuilder.writeListUint8(_clientId!);
    final int? clientSecretOffset = _clientSecret == null ? null
        : fbBuilder.writeListUint8(_clientSecret!);
    fbBuilder.startTable(5);
    fbBuilder.addOffset(0, grantTypeOffset);
    fbBuilder.addOffset(1, refreshTokenOffset);
    fbBuilder.addOffset(2, scopeOffset);
    fbBuilder.addOffset(3, clientIdOffset);
    fbBuilder.addOffset(4, clientSecretOffset);
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
