import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';

class TokenBearer {
  String accessToken;
  String refreshToken;
  String idToken;

  // final int expires_in;
  String tokenType;

  TokenBearer(
      this.accessToken, this.refreshToken, this.tokenType, this.idToken);

  TokenBearer.fromJson(Map<String, dynamic> json)
      : accessToken = json['access_token'],
        refreshToken = json['refresh_token'],
        // expires_in = json['expires_in'],
        tokenType = json['token_type'],
        idToken = json['id_token'];

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'refresh_token': refreshToken,
        // 'expires_in': expires_in,
        'token_type': tokenType,
        'id_token': idToken,
      };
}

class Data {
  static final Data _appData = Data._internal();

  Data._internal();
  Casdoor? casdoor;

  String versions = '';
  // String authToken = '';
  TokenBearer token = TokenBearer('', '', '', '');

  // String userUuid = "";

  factory Data() {
    return _appData;
  }
}

Data data = Data();
