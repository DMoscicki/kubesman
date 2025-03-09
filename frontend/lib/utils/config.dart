import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
import 'package:toml/toml.dart';
import 'package:frontend/services/logger.dart';

Map<String, dynamic> configMap = {};

Future<void> loadConfigFromToml([String filePath = 'config.toml']) async {
  try {
    final platform = await CasdoorFlutterSdkPlatform().getPlatformVersion();
    if (platform != "web" && platform != "wasm") {
      return;
    }

    final file = await TomlDocument.load(filePath);
    configMap = file.toMap();

    // Validate required keys
    final requiredKeys = [
      'CASDOOR_ENDPOINT',
      'CASDOOR_CLIENT_ID',
      'CASDOOR_ORGANISATION_NAME',
      'CASDOOR_APPLICATION_NAME'
    ];

    for (var key in requiredKeys) {
      if (!configMap.containsKey(key)) {
        throw Exception('Missing required key in config.toml: $key');
      }
    }
  } catch (e) {
    logger.e('Error loading config.toml: $e');
    rethrow;
  }
}