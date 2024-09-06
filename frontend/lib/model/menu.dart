import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Home".toUpperCase(),
          style: GoogleFonts.robotoMono(
              color: Theme.of(context).colorScheme.surface,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: false,
      children: [
        ListTile(
          title: Text("Dashboards",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Search",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Explore",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Events",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
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
              color: Theme.of(context).colorScheme.surface,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: false,
      children: [
        ListTile(
          title: Text("OperatorHub",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Installed Operators",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
      ],
    );
  }
}

class Workloads extends StatelessWidget {
  const Workloads({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Workloads".toUpperCase(),
          style: GoogleFonts.robotoMono(
              color: Theme.of(context).colorScheme.surface,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: false,
      children: [
        ListTile(
          title: Text("Pods",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Virtual Machines",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Deployments",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Stateful Sets",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Secrets",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("ConfigMaps",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
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
              color: Theme.of(context).colorScheme.surface,
              fontWeight: FontWeight.bold)),
      showTrailingIcon: false,
      children: [
        ListTile(
          title: Text("OperatorHub",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
        ListTile(
          title: Text("Installed Operators",
              style: GoogleFonts.robotoMono(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0)),
        ),
      ],
    );
  }
}
