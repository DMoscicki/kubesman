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

class _EntryPageState extends State<EntryPage> with SingleTickerProviderStateMixin {
  static final WidgetStateProperty<Icon?> _thumbIcon =
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
    return FutureBuilder<TokenBearer>(
      future: secureStorage.loadToken(),
      builder: (context, snapshot) {
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
                value: context.watch<ThemeProvider>().themeData == ThemeClass.lightTheme,
                thumbIcon: _thumbIcon,
                activeColor: Colors.amberAccent,
                onChanged: (_) => context.read<ThemeProvider>().toggleTheme(),
              ),
            ],
          ),
          extendBody: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).colorScheme.surface,
          drawer: _buildDrawer(snapshot),
          body: _buildBody(snapshot),
        );
      },
    );
  }

  Widget _buildDrawer(AsyncSnapshot<TokenBearer> snapshot) {
    if (snapshot.connectionState != ConnectionState.done) {
      return const SizedBox.shrink();
    }

    if (snapshot.hasError || !snapshot.hasData) {
      return const SizedBox.shrink();
    }

    final tokenData = snapshot.data!;
    if (tokenData.accessToken.isEmpty) return const SizedBox.shrink();

    // Проверяем инициализацию data и casdoor
    if (data == null || data.casdoor == null) {
      return const SizedBox.shrink();
    }

    final userInfo = data.casdoor!.decodedToken(tokenData.accessToken);
    return MainDrawer(
      userName: userInfo["name"] ?? "Unknown",
      userEmail: userInfo["email"] ?? "No email",
      avatarLink: userInfo["avatar"],
    );
  }

  Widget _buildBody(AsyncSnapshot<TokenBearer> snapshot) {
    if (snapshot.connectionState != ConnectionState.done) {
      return const SizedBox.shrink();
    }

    if (snapshot.hasError) return const Text('Error');

    final hasValidToken = snapshot.hasData &&
        snapshot.data!.accessToken.isNotEmpty;

    return hasValidToken ? const SizedBox.shrink() : const LoginPage();
  }
}