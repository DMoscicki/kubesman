
import 'package:flutter/material.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/components/drawer.dart';
import 'package:frontend/components/login_page.dart';
import 'package:frontend/services/secure_storage.dart';
import 'package:frontend/themes/themes.dart';
import 'package:frontend/themes/themes.provider.dart';
import 'package:provider/provider.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
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
        primary: true,
        appBar: AppBar(
          elevation: 0,
          primary: true,
          forceMaterialTransparency: true,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          titleSpacing: 0.0,
          centerTitle: false,
          actions: [
            Switch(
                value: context.read<ThemeProvider>().themeData ==
                    ThemeClass.lightTheme,
                thumbIcon: thumbIcon,
                activeColor: Colors.amberAccent,
                onChanged: (_) {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                }),
          ],
        ),
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).colorScheme.surface,
        drawer: FutureBuilder<TokenBearer>(
            future: secureStorage.loadToken(),
            builder: (
              BuildContext context,
              AsyncSnapshot<TokenBearer> snapshot,
            ) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return SizedBox.shrink();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text("error");
                } else if (snapshot.hasData) {
                  if (data.token.accessToken.isNotEmpty) {
                    Map<String, dynamic> userInfo =
                        data.casdoor!.decodedToken(data.token.accessToken);

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
        body: FutureBuilder<TokenBearer>(
          future: secureStorage.loadToken(),
          builder: (
            BuildContext context,
            AsyncSnapshot<TokenBearer> snapshot,
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
                  return LoginPage();
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
