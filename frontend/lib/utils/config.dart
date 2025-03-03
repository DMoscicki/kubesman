import 'package:toml/toml.dart';
import 'package:frontend/services/logger.dart';

Map<String, dynamic> configMap = {};

// Функция для загрузки конфигурации из TOML файла
Future<void> loadConfigFromToml([String filePath = 'config.toml']) async {
  try {
    // Читаем содержимое TOML файла
    final file = await TomlDocument.load(filePath);

    configMap = file.toMap();

    // Проверяем, что необходимые ключи существуют
    if (!configMap.containsKey('CASDOOR_ENDPOINT') ||
        !configMap.containsKey('CASDOOR_CLIENT_ID') ||
        !configMap.containsKey('CASDOOR_ORGANISATION_NAME') ||
        !configMap.containsKey('CASDOOR_APPLICATION_NAME')) {
      throw Exception('Не все необходимые ключи найдены в config.toml');
    }
  } catch (e) {
    logger.e('Ошибка при загрузке config.toml: $e');
    rethrow;
  }
}