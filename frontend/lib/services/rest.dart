import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/auth_factory/fbs/access_access_generated.dart';
import 'package:frontend/auth_factory/fbs/refresh_refresh_generated.dart';
import 'package:frontend/services/secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

mixin RequestMixin {
  static Future<bool> refreshToken() async {
    final response = await http.post(
        Uri(
          scheme: data.casdoor!.parseScheme(),
          host: data.casdoor!.parseHost(),
          port: data.casdoor!.parsePort(),
          path: "api/login/oauth/refresh_token",
        ),
        body: {
          'grant_type': 'refresh_token',
          'refresh_token': data.token.refreshToken,
          'scope': 'read',
          'client_id': dotenv.get('CASDOOR_CLIENT_ID'),
          'client_secret': dotenv.get('CASDOOR_CLIENT_SECRET')
        });

    if (response.statusCode == 200 && response.body.isNotEmpty) {
      await secureStorage.saveToken(response.body);
      await secureStorage.loadToken();
      return true;
    } else {
      await secureStorage.deleteToken();
      return false;
    }
  }

  static Future<bool> refreshTokenFlat() async {
    var refreshBody = RefreshResponseObjectBuilder(
        grantType: 'refresh_token',
        refreshToken: data.token.refreshToken,
        scope: 'read',
        clientId: utf8.encode(dotenv.get('CASDOOR_CLIENT_ID')),
        clientSecret: utf8.encode(dotenv.get('CASDOOR_CLIENT_SECRET')));

    var refreshBuffer = refreshBody.toBytes();

    final response = await http.post(
        Uri(
          scheme: data.casdoor!.parseScheme(),
          host: data.casdoor!.parseHost(),
          port: 8080,
          path: "api/refresh_token",
        ),
        headers: {"Authorization": 'Bearer ${data.token.accessToken}'},
        body: refreshBuffer);

    if (response.statusCode == 200 && response.body.isNotEmpty) {
      var auc = AccessResponse(response.bodyBytes);
      var newTk = TokenBearer(
          auc.accessToken!, auc.refreshToken!, auc.tokenType!, auc.idToken!);

      await secureStorage.saveToken(json.encode(newTk));
      await secureStorage.loadToken();
      return true;
    } else {
      await secureStorage.deleteToken();
      return false;
    }
  }

  static Future<http.Response> sendRequest(String method, Uri path,
      Map<String, String> headers, dynamic body) async {
    late http.Response resp;
    headers["Authorization"] = 'Bearer ${data.token.accessToken}';

    if (method == "get") {
      resp = await http.get(path, headers: headers);
    } else if (method == "post") {
      resp = await http.post(path, headers: headers, body: body);
    } else if (method == "delete") {
      resp = await http.delete(path, headers: headers, body: body);
    } else if (method == "patch") {
      resp = await http.patch(path, headers: headers, body: body);
    }
    return resp;
  }

  static Future<http.Response> request(String method, Uri path,
      Map<String, String> headers, dynamic body) async {
    http.Response resp = await sendRequest(method, path, headers, body);
    if (resp.statusCode == HttpStatus.unauthorized) {
      if (data.token.refreshToken != "") {
        bool refrehed = await refreshTokenFlat();
        if (refrehed) {
          return sendRequest(method, path, headers, body);
        }
      }
    } else if (resp.statusCode == HttpStatus.ok ||
        resp.statusCode == HttpStatus.noContent ||
        resp.statusCode == HttpStatus.notFound) {
      return resp;
    }
    return http.Response("", HttpStatus.internalServerError);
  }
}
