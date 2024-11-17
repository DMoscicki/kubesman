import 'package:flutter/material.dart';
import 'package:frontend/auth_factory/factory.dart';
import 'package:frontend/protos/api/core/v1/generated.pb.dart' as Core;
import 'package:frontend/services/rest.dart';
import 'package:google_fonts/google_fonts.dart';

class PodsPage extends StatelessWidget {
  const PodsPage({super.key});

  static const List<String> dropDownOptions = [
    "Dash",
    "Sparky",
    "Snoo",
    "Clippy",
  ];

  Future makeRequest() async {
    final response = await RequestMixin.request(
        "get", Uri.parse("http://localhost:8080/pods"), {}, null);

    final pods = Core.PodList.fromBuffer(response.bodyBytes);

    print(pods);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Pods",
                      style: GoogleFonts.robotoMono(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  DropdownButton(
                      items: dropDownOptions
                          .map<DropdownMenuItem<String>>((String mascot) {
                        return DropdownMenuItem<String>(
                            value: mascot, child: Text(mascot));
                      }).toList(),
                      onChanged: (_) => {}),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                height: 280,
                width: 260,
                decoration: const BoxDecoration(
                  color: Color(0xFF7553F6),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 6, right: 8),
                      child: Column(
                        children: [
                          const Text(
                            "ASDSADSADASD",
                            // style: Theme.of(context).colorScheme.secondary,
                          ),
                          TextButton(
                              onPressed: RequestMixin.refreshToken,
                              child: const Text("Refresh")),
                          TextButton(
                              onPressed: makeRequest,
                              child: const Text("Request"))
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
