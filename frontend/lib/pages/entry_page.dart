import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/components/menu_btn.dart';
import 'package:frontend/components/sidebar.dart';
import 'package:frontend/pages/workloads/pods.dart';
import 'package:frontend/protos/api/core/v1/generated.pb.dart';
import 'package:frontend/services/rest.dart';
import 'package:frontend/services/secure_storage.dart';
import 'package:frontend/themes/themes.dart';
import 'package:frontend/themes/themes.provider.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';
import 'package:http/http.dart' as http;
// import 'package:frontend/k8s-classes/podlist.dart' as podlist;

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

  Future<bool> authenticated() async {
    final result = await data.casdoor_.show();

    final code = Uri.parse(result).queryParameters['code'] ?? "";

    final response = await data.casdoor_.requestOauthAccessToken(code);

    if (response.statusCode == 200 && response.body.isNotEmpty) {
      final tokenString = response.body;
      await secureStorage.saveToken(tokenString);
      await secureStorage.loadToken();
      setState(() {});
    }

    return true;
  }

  @override
  void initState() {
    // print("REQUEST");
    // var response = RequestMixin.request(
    //     "get", Uri.http('localhost:9000', '/pods'), {}, null);
    // print(response.toString());
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
                print("ITS OK");
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
                    ],
                  );
                } else {
                  authenticated();
                  final dim = MediaQuery.of(context).size.height * .5;
                  return Stack(children: [
                    Positioned(
                      bottom: dim / 4,
                      right: MediaQuery.of(context).size.width * .47,
                      left: MediaQuery.of(context).size.width * .47,
                      child: Transform.scale(
                        scale: 2,
                        child: TextButton(
                            onPressed: authenticated,
                            child: const Text("Login")),
                      ),
                    )
                  ]);
                }
              } else {
                return const Text('Empty data');
              }
            } else {
              return Text('State: ${snapshot.connectionState}');
            }
          },
        ));
  }
}

// Future<void> getPods() async {
//   var client = http.Client();

//   Map<String, String> reqheader = {
//     'Content-Type': 'application/protobuf',
//   };

//   var response = await client
//       .get(Uri.http('localhost:9000', '/pods'), headers: reqheader)
//       .onError((error, _) {
//     return Future(() => http.Response(error.toString(), 400));
//   });

//   final x = PodList.fromBuffer(response.bodyBytes);

//   print(x);

//   // print("ASDASDASDASDASDASD");
//   // final langresp = podlist.Podlist.fromJson(jsResp.toJson());
//   // print(langresp.items);

//   client.close();
// }

