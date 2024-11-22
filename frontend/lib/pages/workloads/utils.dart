import 'package:flutter/material.dart';

AlertDialog ErrorAlertDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Error'),
    content: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Text("Somethins went wrong"),
    ),
    actions: <Widget>[
      TextButton(
        style: TextButton.styleFrom(
          textStyle: Theme.of(context).textTheme.labelLarge,
        ),
        child: const Text('Close'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}
