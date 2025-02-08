import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/model/menu.dart';
import 'package:frontend/services/logger.dart';
import 'package:frontend/services/rest.dart';
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
    var response = await RequestMixin.request("post",
        Uri.parse("http://localhost:8080/logout"), {}, data.token.idToken);

    // await data.casdoor.tokenLogout();
    // await data.casdoor
    //     .tokenLogout(data.token.accessToken, '', 'logout', clearCache: false);
    if (response.statusCode == 200) {
      await secureStorage.deleteToken();
      data.token.accessToken = "";
      setState(() {});
    } else {
      await data.casdoor!
          .tokenLogout(data.token.idToken, "", "logout", clearCache: false);
      await secureStorage.deleteToken();
      setState(() {});
    }
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
          Workloads(),
          Networking(),
          UserManagement(),
          ServiceManagement(),
          Divider(),
          TextButton(
              onPressed: () async {
                var res = await RequestMixin.refreshTokenFlat();
                logger.t(res);
                setState(() {});
              },
              child: Text("refresh")),
          IconButton(
              onPressed: () async {
                logout();
                Navigator.of(context).pop();
                setState(() {});
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
