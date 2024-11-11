import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/pages/entry_page.dart';
import 'package:frontend/themes/themes.provider.dart';
import 'package:provider/provider.dart';
import 'dart:async';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // if (!kIsWeb && defaultTargetPlatform == TargetPlatform.windows) {
  //   final availableVersion = await WebViewEnvironment.getAvailableVersion();
  //   assert(availableVersion != null,
  //       'Failed to find an installed WebView2 runtime or non-stable Microsoft Edge installation.');

  //   webViewEnvironment = await WebViewEnvironment.create(
  //       settings: WebViewEnvironmentSettings(userDataFolder: 'custom_path'));
  // }
  // final platform = await CasdoorFlutterSdkPlatfor,.m().getPlatformVersion();

  await dotenv.load(fileName: "dev.env");

  final AuthConfig config = AuthConfig(
      clientId: dotenv.get('CASDOOR_CLIENT_ID'),
      serverUrl: (dotenv.get('CASDOOR_ENDPOINT')),
      organizationName: dotenv.get('CASDOOR_ORGANISATION_NAME'),
      appName: dotenv.get('CASDOOR_APPLICATION_NAME'),
      redirectUri: "http://localhost:9000/callback.html",
      callbackUrlScheme: "casdoor");

  // String callbackUri = config.redirectUri;
  // if (!kIsWeb && !kIsWasm) {
  //   callbackUri = '${config.callbackUrlScheme}://callback.html';
  // }
  // config.redirectUri = callbackUri;

  data.casdoor = Casdoor(config: config);

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kubesman',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const EntryPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
