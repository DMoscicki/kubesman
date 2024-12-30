import 'dart:convert';
import 'dart:core';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/services/logger.dart';

class SecureStorageClass {
  FlutterSecureStorage storage = const FlutterSecureStorage();

  static final SecureStorageClass _appData = SecureStorageClass._internal();

  SecureStorageClass._internal();

  factory SecureStorageClass() {
    return _appData;
  }

  Future<TokenBearer> loadTokenFlat() async {
    try {
      String? t = await secureStorage.storage.read(key: "token");
      if (t != null) {
        var decoded = json.decode(t);
        data.token = TokenBearer.fromJson({
          "access_token": decoded["access_token"],
          "refresh_token": decoded["refresh_token"],
          // "expires_in": decoded["expires_in"],
          "token_type": decoded["token_type"],
        });

        // final userInfo = JwtDecoder.decode(data.token.accessToken);
      }
      return data.token;
    } catch (e) {
      // logger.e(e);
      logger.e("Load token", error: e);
      return TokenBearer('', '', '');
    }
  }

  Future<TokenBearer> loadToken() async {
    try {
      String? t = await secureStorage.storage.read(key: "token");
      if (t != null) {
        var decoded = json.decode(t);
        data.token = TokenBearer.fromJson({
          'access_token': decoded['access_token'],
          'refresh_token': decoded['refresh_token'],
          // "expires_in": decoded["expires_in"],
          'token_type': decoded['token_type'],
        });

        // final userInfo = JwtDecoder.decode(data.token.accessToken);
      }
      return data.token;
    } catch (e) {
      // logger.e(e);
      logger.t("error loadToken", error: e);
      return TokenBearer("", "", "");
    }
  }

  Future<void> saveToken(String input) async {
    try {
      await secureStorage.storage.write(key: "token", value: input);
    } catch (e) {
      // logger.e(e);
      logger.e("ERROR savetoken", error: e);
    }
  }

  Future<void> deleteToken() async {
    data.token = TokenBearer("", "", "");
    // data.userUuid = "";
    await secureStorage.storage.deleteAll();
  }

  Future<void> saveFlatToken(String input) async {
    try {
      await secureStorage.storage.write(key: "token", value: input);
    } catch (e) {
      logger.e("ERROR savetoken", error: e);
    }
  }
}

final secureStorage = SecureStorageClass();
