import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
import 'package:flutter/material.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/pages/entry_page.dart';
import 'package:frontend/themes/themes.provider.dart';
import 'package:frontend/utils/config.dart';
import 'package:highlight/languages/http.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:frontend/services/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await loadConfigFromToml();

  final platform = await CasdoorFlutterSdkPlatform().getPlatformVersion();
  final casdoor = await fillConfig(platform);
  data = Data()..casdoor = casdoor;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: App(platform: platform),
    ),
  );
}

class App extends StatefulWidget {
  final String platform;
  const App({super.key, required this.platform});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late Casdoor? _casdoor = data.casdoor;
  bool _showingDialog = false;

  Future<void> _refreshConfig() async {
    final newCasdoor = await fillConfig(widget.platform);
    setState(() {
      _casdoor = newCasdoor;
      data.casdoor = newCasdoor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kubesman',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: FutureBuilder(
        future: Future.value(_casdoor),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(body: Center(child: CircularProgressIndicator()));
          }

          final hasError = snapshot.hasError || _casdoor == null;
          final isNonWeb = widget.platform != 'web' && widget.platform != 'wasm';

          if (hasError && isNonWeb && !_showingDialog) {
            _showingDialog = true;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _showConfigDialog(context);
            });
          }

          return hasError
              ? Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Initialization failed'),
                  TextButton(
                    onPressed: _refreshConfig,
                    child: const Text('Retry'),
                  )
                ],
              ),
            ),
          )
              : const EntryPage();
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void _showConfigDialog(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final controllers = [
      TextEditingController(text: configMap['CASDOOR_ENDPOINT'] as String? ?? ''),
      TextEditingController(text: configMap['CASDOOR_CLIENT_ID'] as String? ?? ''),
      TextEditingController(text: configMap['CASDOOR_ORGANISATION_NAME'] as String? ?? ''),
      TextEditingController(text: configMap['CASDOOR_APPLICATION_NAME'] as String? ?? ''),
    ];

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Casdoor Configuration'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: controllers[0],
                decoration: const InputDecoration(labelText: 'Endpoint'),
                validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
              ),
              TextFormField(
                controller: controllers[1],
                decoration: const InputDecoration(labelText: 'Client ID'),
                validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
              ),
              TextFormField(
                controller: controllers[2],
                decoration: const InputDecoration(labelText: 'Organization'),
                validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
              ),
              TextFormField(
                controller: controllers[3],
                decoration: const InputDecoration(labelText: 'Application'),
                validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: Navigator.of(context).pop,
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              if (formKey.currentState?.validate() ?? false) {
                try {
                  final endpoint = controllers[0].text;

                  // Проверка доступности сервера
                  final response = await http.get(Uri.parse(endpoint));
                  if (response.statusCode != 200) {
                    throw Exception('Server returned ${response.statusCode}');
                  }

                  // Обновление конфигурации
                  configMap['CASDOOR_ENDPOINT'] = endpoint;
                  configMap['CASDOOR_CLIENT_ID'] = controllers[1].text;
                  configMap['CASDOOR_ORGANISATION_NAME'] = controllers[2].text;
                  configMap['CASDOOR_APPLICATION_NAME'] = controllers[3].text;

                  await _refreshConfig();
                  Navigator.pop(context);
                  setState(() => _showingDialog = false);
                } catch (e) {
                  logger.e(e);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Connection error: ${e.toString()}')),
                  );
                }
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}

Future<Casdoor?> fillConfig(String platform) async {
  try {
    return Casdoor(
      config: AuthConfig(
        clientId: configMap['CASDOOR_CLIENT_ID'] as String,
        serverUrl: configMap['CASDOOR_ENDPOINT'] as String,
        organizationName: configMap['CASDOOR_ORGANISATION_NAME'] as String,
        appName: configMap['CASDOOR_APPLICATION_NAME'] as String,
        redirectUri: platform == 'web'
            ? 'http://localhost:9000/callback.html'
            : 'kubesman://callback',
        callbackUrlScheme: platform == 'web' ? "casdoor" : "kubesman",
      ),
    );
  } catch (e) {
    logger.e('Config error: $e');
    return null;
  }
}