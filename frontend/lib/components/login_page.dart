import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/auth_factory/macos_auth.dart';
import 'package:frontend/pages/entry_page.dart';
import 'package:frontend/services/secure_storage.dart';
import 'package:rive/rive.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late RiveAnimationController _controller;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('Timeline 1');
  }

  Future<void> _authenticate() async {
    // Проверяем инициализацию
    if (data.casdoor == null) {
      _showErrorSnackBar('Casdoor not initialized');
      return;
    }

    setState(() => _isLoading = true);
    try {
      String? result;

      try {
        if (kIsWeb || kIsWasm) {
          result = await data.casdoor!.show();
        } else if (Platform.isMacOS) {
          if (!context.mounted) return;
          final url = data.casdoor!.getSigninUrl().toString();
          result = await MacOSAuthCasdoor(url);
        } else {
          if (!context.mounted) return;
          result = await data.casdoor!.showFullscreen(context);
        }
      } on Exception catch (e) {
        _showErrorSnackBar('Authentication failed: $e');
        return;
      }

      if (result == null || result.isEmpty) {
        _showErrorSnackBar('No response from authentication service');
        return;
      }

      final code = Uri.parse(result).queryParameters['code'] ?? '';
      if (code.isEmpty) {
        _showErrorSnackBar('Invalid authorization code');
        return;
      }

      try {
        final response = await data.casdoor!.requestOauthAccessToken(code);
        if (response.statusCode == 200 && response.body.isNotEmpty) {
          await secureStorage.saveToken(response.body);
          await secureStorage.loadToken();
          // data.token = token; // Обновляем токен в синглтоне

          if (context.mounted) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const EntryPage()),
            );
          }
        }
      } catch (e) {
        _showErrorSnackBar('Token request failed: $e');
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  void _showErrorSnackBar(String message) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  void _initializeRiveColors(Artboard artboard) {
    final themeColor = Theme.of(context).colorScheme.secondary;
    artboard.forEachComponent((child) {
      if (child is Shape) {
        child.fills.first.paint.color = themeColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.47,
            height: MediaQuery.of(context).size.height * 0.47,
            child: RiveAnimation.asset(
              'assets/k8s_rotation.riv',
              speedMultiplier: 0.1,
              controllers: [_controller],
              onInit: _initializeRiveColors,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _isLoading ? null : _authenticate,
            child: _isLoading
                ? const CircularProgressIndicator()
                : const Text('Login'),
          ),
        ],
      ),
    );
  }
}