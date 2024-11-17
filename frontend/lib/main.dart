import 'dart:io';

import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
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

  final platform = await CasdoorFlutterSdkPlatform().getPlatformVersion();

  await dotenv.load(fileName: ".env.dev");

  String server = '';

  if (!kIsWasm && !kIsWeb) {
    if (Platform.isAndroid) {
      server =
          dotenv.get('CASDOOR_ENDPOINT').replaceAll("localhost", "10.0.2.2");
    }
  }

  final AuthConfig config = AuthConfig(
      clientId: dotenv.get('CASDOOR_CLIENT_ID'),
      serverUrl: server,
      organizationName: dotenv.get('CASDOOR_ORGANISATION_NAME'),
      appName: dotenv.get('CASDOOR_APPLICATION_NAME'),
      redirectUri: 'http://localhost:9000/callback.html',
      callbackUrlScheme: "casdoor");

  if (!kIsWeb || !kIsWasm) {
    if (Platform.isAndroid) {
      // config.serverUrl = "http://10.0.2.2:8000";
      config.redirectUri = 'http://10.0.2.2:8000/callback.html';
    }
  }

  String callbackUri = config.redirectUri;

  if (platform != "web") {
    callbackUri = '${config.callbackUrlScheme}://callback';
  }

  config.redirectUri = callbackUri;

  final Casdoor casdorCfg = Casdoor(config: config);

  data.casdoor = casdorCfg;

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
