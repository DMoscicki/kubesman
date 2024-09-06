import 'package:flutter/material.dart';
import 'package:frontend/model/menu.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  // Menu selectedSideMenu = sidebarMenus.first;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 288,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: DefaultTextStyle(
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 24, top: 16, bottom: 2),
                  child: HomeMenu(),
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 24, top: 5, bottom: 2),
                //   child: OperatorsMenu(),
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 24, top: 5, bottom: 2),
                  child: Workloads(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24, top: 5, bottom: 2),
                  child: Networking(),
                ),
              ],
            )),
      ),
    );
  }
}
