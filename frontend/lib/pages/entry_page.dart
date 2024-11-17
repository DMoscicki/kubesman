import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/auth_factory/macos_auth.dart';
import 'package:frontend/components/menu_btn.dart';
import 'package:frontend/components/sidebar.dart';
import 'package:frontend/pages/workloads/pods.dart';
import 'package:frontend/services/secure_storage.dart';
import 'package:frontend/themes/themes.dart';
import 'package:frontend/themes/themes.provider.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

WebViewEnvironment? webViewEnvironment;

const List<String> list = <String>['One', 'Two', 'Three', 'Logout'];

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage>
    with SingleTickerProviderStateMixin {
  bool isSideBarOpen = false;

  late SMIBool isMenuOpenInput;

  late AnimationController _animationController;
  late Animation<double> scalAnimation;
  late Animation<double> animation;
  var userName = '';

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
      var tk = await secureStorage.loadToken();

      setState(() {
        userName = data.casdoor.getUserInfo(tk.accessToken).toString();
      });
    }

    return;
  }

  Future logout() async {
    await data.casdoor
        .tokenLogout(data.token.accessToken, '', 'logout', clearCache: false);
    await secureStorage.deleteToken();
    setState(() {});
  }

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(
        () {
          setState(() {});
        },
      );
    scalAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).colorScheme.surface,
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
                  return Stack(
                    children: [
                      AnimatedPositioned(
                        width: 288,
                        height: MediaQuery.of(context).size.height,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.fastOutSlowIn,
                        left: isSideBarOpen ? 0 : -288,
                        top: 0,
                        child: const SideBar(),
                      ),
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(1 * animation.value -
                              30 * (animation.value) * pi / 180),
                        child: Transform.translate(
                          offset: Offset(animation.value * 265, 0),
                          child: Transform.scale(
                            scale: scalAnimation.value,
                            child: const ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(24),
                              ),
                              child: PodsPage(),
                            ),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.fastOutSlowIn,
                        left: isSideBarOpen ? 220 : 0,
                        top: 16,
                        child: MenuBtn(
                          press: () {
                            isMenuOpenInput.value = !isMenuOpenInput.value;

                            if (_animationController.value == 0) {
                              _animationController.forward();
                            } else {
                              _animationController.reverse();
                            }

                            setState(
                              () {
                                isSideBarOpen = !isSideBarOpen;
                              },
                            );
                          },
                          riveOnInit: (artboard) {
                            final controller =
                                StateMachineController.fromArtboard(
                                    artboard, "State Machine");

                            artboard.addController(controller!);

                            isMenuOpenInput =
                                controller.findInput<bool>("isOpen") as SMIBool;
                            isMenuOpenInput.value = true;
                          },
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(microseconds: 0),
                        top: 16,
                        right: 16,
                        child: Switch(
                            value: context.read<ThemeProvider>().themeData ==
                                ThemeClass.lightTheme,
                            thumbIcon: thumbIcon,
                            activeColor: Colors.amberAccent,
                            onChanged: (_) {
                              Provider.of<ThemeProvider>(context, listen: false)
                                  .toggleTheme();
                            }),
                      ),
                      AnimatedPositioned(
                          top: 50,
                          right: 16,
                          duration: const Duration(microseconds: 0),
                          child: DropdownMenu(
                              initialSelection: userName,
                              onSelected: (String? value) {
                                setState(() {
                                  if (value == "Logout") {
                                    logout();
                                  }
                                });
                              },
                              dropdownMenuEntries: list
                                  .map<DropdownMenuEntry<String>>(
                                      (String value) {
                                return DropdownMenuEntry<String>(
                                    value: value, label: value);
                              }).toList()))
                    ],
                  );
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
