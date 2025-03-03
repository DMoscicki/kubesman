import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
import 'package:flutter/material.dart';
import 'package:frontend/auth_factory/casdoor_setup.dart';
import 'package:frontend/pages/entry_page.dart';
import 'package:frontend/themes/themes.provider.dart';
import 'package:frontend/utils/config.dart';
import 'package:provider/provider.dart';
import 'package:frontend/services/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await loadConfigFromToml();

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kubesman',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: FutureBuilder<Casdoor?>(
        future: fillConfig(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final casdoor = snapshot.data;
            return casdoor?.config == null ? CasdoorForm() : EntryPage();
          }
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

Future<Casdoor?> fillConfig() async {
  try {
    final platform = await CasdoorFlutterSdkPlatform().getPlatformVersion();

    if (platform == "web") {
      // Извлекаем значения из глобальной переменной configMap
      String server = configMap['CASDOOR_ENDPOINT'] as String;

      final AuthConfig config = AuthConfig(
        clientId: configMap['CASDOOR_CLIENT_ID'] as String,
        serverUrl: server,
        organizationName: configMap['CASDOOR_ORGANISATION_NAME'] as String,
        appName: configMap['CASDOOR_APPLICATION_NAME'] as String,
        redirectUri: 'http://localhost:9000/callback.html',
        callbackUrlScheme: "casdoor",
      );

      final Casdoor casdorCfg = Casdoor(config: config);

      return casdorCfg;
    }

    return null;
  } catch (e) {
    logger.e('Error in fillConfig: $e');
    return null;
  }
}