import 'dart:io';

import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:frontend/auth_factory/casdoor_setup.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/pages/entry_page.dart';
import 'package:frontend/services/logger.dart';
import 'package:frontend/themes/themes.provider.dart';
import 'package:provider/provider.dart';
import 'dart:async';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final platform = await CasdoorFlutterSdkPlatform().getPlatformVersion();
  //
  // await dotenv.load(fileName: "dev.env");
  //
  // String server = dotenv.get('CASDOOR_ENDPOINT');
  //
  // if (!kIsWasm && !kIsWeb) {
  //   if (Platform.isAndroid) {
  //     server = server.replaceAll("localhost", "10.0.2.2");
  //   }
  // }

  // final AuthConfig config = AuthConfig(
  //     clientId: dotenv.get('CASDOOR_CLIENT_ID'),
  //     serverUrl: (server),
  //     organizationName: dotenv.get('CASDOOR_ORGANISATION_NAME'),
  //     appName: dotenv.get('CASDOOR_APPLICATION_NAME'),
  //     redirectUri: 'http://localhost:9000/callback.html',
  //     callbackUrlScheme: "casdoor");
  //
  // String callbackUri = config.redirectUri;
  //
  // if (platform != "web") {
  //   callbackUri = '${config.callbackUrlScheme}://callback';
  //   if (Platform.isAndroid) {
  //     config.redirectUri = 'http://10.0.2.2:8000/callback.html';
  //   }
  // }
  //
  // config.redirectUri = callbackUri;
  //
  // final Casdoor casdorCfg = Casdoor(config: config);
  //
  // data.casdoor = casdorCfg;

  // data.casdoor = Casdoor(config: AuthConfig(
  //     clientId: '',
  //     serverUrl: '',
  //     organizationName: '',
  //     appName: ''
  // ));

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const App(),
  ));
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    super.initState();
    fillConfig().then((result) {
      logger.d(result);
      data.casdoor = result!;
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kubesman',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: data.casdoor?.config == null ? CasdoorForm() : EntryPage(),
      //   home: FutureBuilder(
      //       future: fillConfig(),
      //       builder: (
      //     BuildContext context,
      //     AsyncSnapshot<Casdoor?> snapshot,
      //   ) {
      //         if (snapshot.connectionState == ConnectionState.waiting) {
      //           return SizedBox.shrink();
      //         } else if (snapshot.connectionState == ConnectionState.done) {
      //           if (snapshot.hasError) {
      //             return Text("error");
      //           } else if (!snapshot.hasData){
      //             return CasdoorForm();
      //           } else {
      //             return SizedBox.shrink();
      //           }
      //         } else {
      //           return SizedBox.shrink();
      //         }
      //       }
      // ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Kubesman',
//       theme: Provider.of<ThemeProvider>(context).themeData,
//       home: data.casdoor?.config == null ? CasdoorForm() : EntryPage(),
//     //   home: FutureBuilder(
//     //       future: fillConfig(),
//     //       builder: (
//     //     BuildContext context,
//     //     AsyncSnapshot<Casdoor?> snapshot,
//     //   ) {
//     //         if (snapshot.connectionState == ConnectionState.waiting) {
//     //           return SizedBox.shrink();
//     //         } else if (snapshot.connectionState == ConnectionState.done) {
//     //           if (snapshot.hasError) {
//     //             return Text("error");
//     //           } else if (!snapshot.hasData){
//     //             return CasdoorForm();
//     //           } else {
//     //             return SizedBox.shrink();
//     //           }
//     //         } else {
//     //           return SizedBox.shrink();
//     //         }
//     //       }
//     // ),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

Future<Casdoor?> fillConfig() async {
  final platform = await CasdoorFlutterSdkPlatform().getPlatformVersion();

  // await dotenv.load(fileName: "dev.env");
  //
  // String server = dotenv.get('CASDOOR_ENDPOINT');

  String server = '';

  if (!kIsWasm && !kIsWeb) {
    if (Platform.isAndroid) {
      server = server.replaceAll("localhost", "10.0.2.2");
    }
  }

  if (platform == "web") {
    await dotenv.load(fileName: "dev.env");

    String server = dotenv.get('CASDOOR_ENDPOINT');

    final AuthConfig config = AuthConfig(
        clientId: dotenv.get('CASDOOR_CLIENT_ID'),
        serverUrl: (server),
        organizationName: dotenv.get('CASDOOR_ORGANISATION_NAME'),
        appName: dotenv.get('CASDOOR_APPLICATION_NAME'),
        redirectUri: 'http://localhost:9000/callback.html',
        callbackUrlScheme: "casdoor");

    String callbackUri = config.redirectUri;

    // if (platform != "web") {
    //   callbackUri = '${config.callbackUrlScheme}://callback';
    //   if (Platform.isAndroid) {
    //     config.redirectUri = 'http://10.0.2.2:8000/callback.html';
    //   }
    // }

    config.redirectUri = callbackUri;

    final Casdoor casdorCfg = Casdoor(config: config);

    // data.casdoor = casdorCfg;

    return casdorCfg;
  }

  return null;
}

