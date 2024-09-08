import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frontend/components/menu_btn.dart';
import 'package:frontend/components/sidebar.dart';
import 'package:frontend/pages/workloads/pods.dart';
import 'package:frontend/themes/themes.dart';
import 'package:frontend/themes/themes.provider.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

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
      body: Stack(
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
              ..rotateY(
                  1 * animation.value - 30 * (animation.value) * pi / 180),
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
                final controller = StateMachineController.fromArtboard(
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
      ),
    );
  }
}
