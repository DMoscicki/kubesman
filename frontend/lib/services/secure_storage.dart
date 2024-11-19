import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:frontend/auth_factory/factory.dart';
<<<<<<< HEAD
=======
import 'package:jwt_decoder/jwt_decoder.dart';
>>>>>>> master

class SecureStorageClass {
  FlutterSecureStorage storage = const FlutterSecureStorage();

  static final SecureStorageClass _appData = SecureStorageClass._internal();

  SecureStorageClass._internal();

  factory SecureStorageClass() {
    return _appData;
  }

  Future<Token> loadToken() async {
    try {
      String? t = await secureStorage.storage.read(key: "token");
      if (t != null) {
        var decoded = json.decode(t);
        data.token = Token.fromJson({
          "access_token": decoded["access_token"],
          "refresh_token": decoded["refresh_token"],
          "expires_in": decoded["expires_in"],
          "token_type": decoded["token_type"],
        });

        // final userInfo = JwtDecoder.decode(data.token.accessToken);
      }
      return data.token;
    } catch (e) {
      // logger.e(e);
<<<<<<< HEAD
      print("error loadToken");
      print(e);
=======
>>>>>>> master
      return Token("", "", "");
    }
  }

  Future<void> saveToken(String input) async {
    try {
      await secureStorage.storage.write(key: "token", value: input);
    } catch (e) {
      // logger.e(e);
<<<<<<< HEAD
      print("ERROR savetoken");
      print(e);
=======
>>>>>>> master
    }
  }

  Future<void> deleteToken() async {
    data.token = Token("", "", "");
    // data.userUuid = "";
    await secureStorage.storage.deleteAll();
  }
}

final secureStorage = SecureStorageClass();
