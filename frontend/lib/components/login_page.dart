import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/auth_factory/macos_auth.dart';
import 'package:frontend/services/secure_storage.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late RiveAnimationController _controller;

  Future authenticated(BuildContext ctx) async {
    String result = '';

    try {
      if (kIsWeb || kIsWasm) {
        result = await data.casdoor.show();
      } else {
        if (Platform.isMacOS) {
          if (!ctx.mounted) return;
          var urler = data.casdoor.getSigninUrl();
          result = await MacOSAuthCasdoor(urler.toString());
          setState(() {});
        }
        if (Platform.isIOS || Platform.isAndroid || Platform.isLinux) {
          if (!ctx.mounted) return;
          result = await data.casdoor.showFullscreen(ctx);
        }
      }
    } catch (e) {
      // print(e);
      return;
    }

    final code = Uri.parse(result).queryParameters['code'] ?? "";

    final response = await data.casdoor.requestOauthAccessToken(code);

    if (response.statusCode == 200 && response.body.isNotEmpty) {
      final tokenString = response.body;
      await secureStorage.saveToken(tokenString);
      await secureStorage.loadToken();
    }

    return;
  }

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('Timeline 1');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .47,
              height: MediaQuery.of(context).size.height * .47,
              child: RiveAnimation.asset(
                "assets/k8s_rotation.riv",
                speedMultiplier: 0.1,
                controllers: [_controller],
                onInit: (Artboard artboard) {
                  artboard.forEachComponent(
                    (child) {
                      if (child is Shape) {
                        final Shape shape = child;
                        shape.fills.first.paint.color =
                            Theme.of(context).colorScheme.secondary;
                      }
                    },
                  );
                },
              ),
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () async {
                  authenticated(context);
                  setState(() {});
                },
                child: Text("Login")),
          )
          // TextButton(
          //     onPressed: () async {
          //       authenticated(context);
          //       setState(() {});
          //     },
          //     child: const Text("Login"))
        ],
      ),
    );
  }
}
