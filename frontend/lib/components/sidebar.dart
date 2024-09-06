import 'package:flutter/material.dart';
import 'package:frontend/components/sidemenu.dart';
import 'package:frontend/model/menu.dart';
import 'package:frontend/utils/rive_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  Menu selectedSideMenu = sidebarMenus.first;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const InfoCard(
              //   name: "Abu Anwar",
              //   bio: "YouTuber",
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                child: Text("Browse".toUpperCase(),
                    style: GoogleFonts.robotoMono(
                        color: Theme.of(context).colorScheme.surface,
                        fontWeight: FontWeight.bold)),
              ),
              ...sidebarMenus.map((menu) => SideMenu(
                    menu: menu,
                    selectedMenu: selectedSideMenu,
                    press: () {
                      RiveUtils.chnageSMIBoolState(menu.rive.status!);
                      setState(() {
                        selectedSideMenu = menu;
                      });
                    },
                    riveOnInit: (artboard) {
                      menu.rive.status = RiveUtils.getRiveInput(artboard,
                          stateMachineName: menu.rive.stateMachineName);
                    },
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 40, bottom: 16),
                child: Text(
                  "History".toUpperCase(),
                  style:
                      GoogleFonts.robotoMono(
                        color: Theme.of(context).colorScheme.surface,
                        fontWeight: FontWeight.bold)),
                ),
              ...sidebarMenus2.map((menu) => SideMenu(
                    menu: menu,
                    selectedMenu: selectedSideMenu,
                    press: () {
                      RiveUtils.chnageSMIBoolState(menu.rive.status!);
                      setState(() {
                        selectedSideMenu = menu;
                      });
                    },
                    riveOnInit: (artboard) {
                      menu.rive.status = RiveUtils.getRiveInput(artboard,
                          stateMachineName: menu.rive.stateMachineName);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
