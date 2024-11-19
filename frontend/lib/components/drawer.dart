import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/model/menu.dart';
import 'package:frontend/services/secure_storage.dart';

class MainDrawer extends StatefulWidget {
  final String userName;
  final String userEmail;
  final String avatarLink;

  const MainDrawer(
      {super.key,
      required this.userName,
      required this.userEmail,
      required this.avatarLink});

  @override
  State<MainDrawer> createState() => MainDrawerState();
}

class MainDrawerState extends State<MainDrawer> {
  Future logout() async {
    await data.casdoor
        .tokenLogout(data.token.accessToken, '', 'logout', clearCache: false);
    await secureStorage.deleteToken();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.secondary),
              accountName: Text(widget.userName,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.surface)),
              accountEmail: Text(widget.userEmail,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.surface)),
              currentAccountPicture: SvgPicture.network(widget.avatarLink)),
          HomeMenu(),
          OperatorsMenu(),
          Workloads(),
          Networking(),
          UserManagement(),
          Divider(),
          IconButton(
              onPressed: () {
                logout();
                setState(() {});
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
