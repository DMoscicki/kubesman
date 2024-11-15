import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/services/secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

mixin RequestMixin {
  static Future<bool> refreshToken() async {
    final response = await http.post(
        Uri(
          scheme: "https",
          host: dotenv.get('CASDOOR_ENDPOINT').split("//").last,
          port: 8000,
          path: "api/login/oauth/refresh_token",
        ),
        body: {
          'grant_type': 'refresh_token',
          'refresh_token': data.token.refreshToken,
          'scope': "read",
          'client_id': dotenv.get('CASDOOR_CLIENT_ID'),
          'client_secret': dotenv.get('CASDOOR_CLIENT_SECRET')
        });
    if (response.statusCode == 200) {
      await secureStorage.saveToken(response.body);
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
        bool refrehed = await refreshToken();
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