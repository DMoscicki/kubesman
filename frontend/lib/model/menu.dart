import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/pages/workloads/configmaps.dart';
import 'package:frontend/pages/workloads/deployments.dart';
import 'package:frontend/pages/workloads/pods.dart';
import 'package:frontend/pages/workloads/secrets.dart';
import 'package:frontend/pages/workloads/statefulsets.dart';
import 'package:frontend/services/logger.dart';
import 'package:frontend/services/rest.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/yaml.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';


class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => HomeMenuState();
}

class HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Home".toUpperCase(),
          style: GoogleFonts.robotoMono(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: false,
      children: [
        ListTile(
          title: Text("Search",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("API Explore",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Events",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
      ],
    );
  }
}

class OperatorsMenu extends StatelessWidget {
  const OperatorsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Operators".toUpperCase(),
          style: GoogleFonts.robotoMono(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: false,
      children: [
        ListTile(
          title: Text("OperatorHub",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Installed Operators",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
      ],
    );
  }
}

class Workloads extends StatefulWidget {
  const Workloads({super.key});

  @override
  State<Workloads> createState() => WorkloadsState();
}

class WorkloadsState extends State<Workloads> {
  late AnimationController animCtrl;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Workloads".toUpperCase(),
          style: GoogleFonts.robotoMono(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: true,
      children: [
        ListTile(
          title: Text("Pods",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
          onTap: () => {
            if (!kIsWasm && !kIsWeb)
              {
                if (Platform.isAndroid)
                  {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PodsPage();
                    }))
                  }
                else
                  {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return PodsPage();
                    }))
                  }
              }
            else
              {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return PodsPage();
                }))
              }
          },
        ),
        ListTile(
          title: Text("Deployments",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
          onTap: () => {
            if (!kIsWasm && !kIsWeb)
              {
                if (Platform.isAndroid)
                  {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DeploymentsPage();
                    }))
                  }
                else
                  {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return DeploymentsPage();
                    }))
                  }
              }
            else
              {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return DeploymentsPage();
                }))
              }
          },
        ),
        ListTile(
          title: Text("StatefulSets",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
          onTap: () => {
            if (!kIsWasm && !kIsWeb)
              {
                if (Platform.isAndroid)
                  {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return StatefulSetsPage();
                    }))
                  }
                else
                  {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return StatefulSetsPage();
                    }))
                  }
              }
            else
              {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return StatefulSetsPage();
                }))
              }
          },
        ),
        ListTile(
          title: Text("Secrets",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
          onTap: () => {
            if (!kIsWasm && !kIsWeb)
              {
                if (Platform.isAndroid)
                  {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SecretsPage();
                    }))
                  }
                else
                  {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return SecretsPage();
                    }))
                  }
              }
            else
              {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return SecretsPage();
                }))
              }
          },
        ),
        ListTile(
          title: Text("ConfigMaps",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
          onTap: () => {
            if (!kIsWasm && !kIsWeb)
              {
                if (Platform.isAndroid)
                  {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ConfigMapsPage();
                    }))
                  }
                else
                  {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return ConfigMapsPage();
                    }))
                  }
              }
            else
              {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return ConfigMapsPage();
                }))
              }
          },
        ),
      ],
    );
  }
}

class Networking extends StatelessWidget {
  const Networking({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Networking".toUpperCase(),
          style: GoogleFonts.robotoMono(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: false,
      children: [
        ListTile(
          title: Text("Services",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Ingresses",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("NetworkPolicies",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
      ],
    );
  }
}

class UserManagement extends StatelessWidget {
  const UserManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("User Management".toUpperCase(),
          style: GoogleFonts.robotoMono(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: false,
      children: [
        ListTile(
          title: Text("ServiceAccounts",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Roles",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("RoleBindings",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
      ],
    );
  }
}

class ServiceManagement extends StatelessWidget {
  const ServiceManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Service Management".toUpperCase(),
          style: GoogleFonts.robotoMono(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: false,
      children: [
        ListTile(
          title: Text("Update Cluster object",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
          onTap: () => {
            if (!kIsWasm && !kIsWeb)
              {
                if (Platform.isAndroid)
                  {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return YamlEditorScreen();
                    }))
                  }
                else
                  {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return YamlEditorScreen();
                    }))
                  }
              }
            else
              {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return YamlEditorScreen();
                }))
              }
          },
        ),
      ],
    );
  }
}

class YamlEditorScreen extends StatelessWidget {
  final controller = CodeController(
    language: yaml,
    text: '''apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:1.14.2
    ports:
    - containerPort: 80
''',
  );

  Future<void> _sendYamlToServer() async {
    final yamlContent = controller.text;

    logger.d(yamlContent);

    final response = await RequestMixin.request("post", Uri.parse("http://localhost:8080/yaml/apply"), {}, utf8.encode(yamlContent));

    logger.d(response.body);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CodeTheme(
              data: CodeThemeData(styles: monokaiSublimeTheme),
              child: CodeField(
                  readOnly: false,
                  controller: controller,
                  textStyle: TextStyle(fontFamily: 'monospace', fontSize: 14),
                  onChanged: (value) {
                    print("Updated YAML content:\n$value");
                  })),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _sendYamlToServer, // Call the function when the button is pressed
              child: Text('Send YAML as Bytes'),
            ),
          ),
        ],)
    );
  }
}
