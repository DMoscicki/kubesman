import 'dart:io';

import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/main.dart';
import 'package:frontend/services/logger.dart';

class CasdoorForm extends StatefulWidget {
  const CasdoorForm({super.key});

  @override
  State<CasdoorForm> createState() => _CasdoorFormState();
}

class _CasdoorFormState extends State<CasdoorForm> {

  late String clientID = '';
  late String clientSecret = '';
  late String appName = '';
  late String orgName = '';
  late String host = '';

  onSave(BuildContext context) {
    // final platform = CasdoorFlutterSdkPlatform().getPlatformVersion();

    AuthConfig config = AuthConfig(
        clientId: clientID,
        serverUrl: host,
        organizationName: orgName,
        appName: appName,
        redirectUri: '${host}/callback.html',
        callbackUrlScheme: "casdoor");

    String callbackUri = config.redirectUri;

    if (!kIsWasm && !kIsWeb) {
      callbackUri = '${config.callbackUrlScheme}://callback';
      if (Platform.isAndroid) {
        // localhost
        config.redirectUri = 'http://10.0.2.2:8000/callback.html';
      }
    }

    config.redirectUri = callbackUri;

    final Casdoor casdorCfg = Casdoor(config: config);

    // data.casdoor = casdorCfg;

    // logger.d(data.casdoor.config == null);
    data.casdoor = casdorCfg;
    logger.d(data.casdoor!.config.serverUrl);
    setState(() {
      data.casdoor = casdorCfg;
    });
    return;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FocusTraversalGroup(
          child: Form(
              autovalidateMode: AutovalidateMode.always,
              onChanged: () {
                Form.of(primaryFocus!.context!).save();
              },
              child: Wrap(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Please write a Casdoor ClientID',
                    ),
                    onChanged: (String? value) {
                      clientID = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Please write a Casdoor ClientSecret',
                    ),
                    onChanged: (String? value) {
                      clientSecret = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Please write a Casdoor AppName',
                    ),
                    onChanged: (String? value) {
                      appName = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Please write a Casdoor Org Name',
                    ),
                    onChanged: (String? value) {
                      orgName = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Please write a Casdoor Host',
                    ),
                    onChanged: (String? value) {
                      host = value!;
                    },
                  ),
                  TextButton(
                    onPressed: () => {
                      onSave(context),
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>
                      App()
                    ))
                    },
                    child: const Text('Save'),
                  ),
                ],
              )
          )
      ),
    );
  }
}