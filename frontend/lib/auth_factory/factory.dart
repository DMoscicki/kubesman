import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';

class Token {
  final String accessToken;
  final String refreshToken;

  // final int expires_in;
  final String tokenType;

  Token(this.accessToken, this.refreshToken, this.tokenType);

  Token.fromJson(Map<String, dynamic> json)
      : accessToken = json['access_token'],
        refreshToken = json['refresh_token'],
        // expires_in = json['expires_in'],
        tokenType = json['token_type'];

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'refresh_token': refreshToken,
        // 'expires_in': expires_in,
        'token_type': tokenType,
      };
}

class Data {
  static final Data _appData = Data._internal();

  Data._internal();
  late final Casdoor casdoor;

  String versions = '';
  // String authToken = '';
  Token token = Token('', '', '');

  // String userUuid = "";

  factory Data() {
    return _appData;
  }
}

Data data = Data();
