import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/auth_factory/macos_auth.dart';
import 'package:frontend/components/drawer.dart';
import 'package:frontend/services/secure_storage.dart';

WebViewEnvironment? webViewEnvironment;

const List<String> list = <String>['One', 'Two', 'Three', 'Logout'];

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage>
    with SingleTickerProviderStateMixin {
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

  // @override
  // void initState() {
  //   _animationController = AnimationController(
  //       vsync: this, duration: const Duration(milliseconds: 200))
  //     ..addListener(
  //       () {
  //         setState(() {});
  //       },
  //     );
  //   scalAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
  //       parent: _animationController, curve: Curves.fastOutSlowIn));
  //   animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
  //       parent: _animationController, curve: Curves.fastOutSlowIn));
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _animationController.dispose();
  //   super.dispose();
  // }

  final WidgetStateProperty<Icon?> thumbIcon =
      WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.sunny);
      }
      return const Icon(Icons.dark_mode_outlined);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).colorScheme.surface,
        drawer: FutureBuilder<Token>(
            future: secureStorage.loadToken(),
            builder: (
              BuildContext context,
              AsyncSnapshot<Token> snapshot,
            ) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return SizedBox.shrink();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text("error");
                } else if (snapshot.hasData) {
                  if (data.token.accessToken.isNotEmpty) {
                    Map<String, dynamic> userInfo =
                        data.casdoor.decodedToken(data.token.accessToken);

                    return MainDrawer(
                        userName: userInfo["name"],
                        userEmail: userInfo["email"],
                        avatarLink: userInfo["avatar"]);
                  } else {
                    return SizedBox.shrink();
                  }
                } else {
                  return SizedBox.shrink();
                }
              } else {
                return SizedBox.shrink();
              }
            }),
        body: FutureBuilder<Token>(
          future: secureStorage.loadToken(),
          builder: (
            BuildContext context,
            AsyncSnapshot<Token> snapshot,
          ) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SizedBox.shrink();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text('Error');
              } else if (snapshot.hasData) {
                if (data.token.accessToken != "") {
                  return SizedBox.shrink();
                } else {
                  final dim = MediaQuery.of(context).size.height * .5;
                  return Stack(children: [
                    Positioned(
                      bottom: dim / 4,
                      right: MediaQuery.of(context).size.width * .47,
                      left: MediaQuery.of(context).size.width * .47,
                      child: Transform.scale(
                        scale: 2,
                        child: TextButton(
                            onPressed: () async {
                              authenticated(context);
                              setState(() {});
                            },
                            child: const Text("Login")),
                      ),
                    )
                  ]);
                }
              } else {
                return const Text('Empty');
              }
            } else {
              return Text('State: ${snapshot.connectionState}');
            }
          },
        ));
  }
}
