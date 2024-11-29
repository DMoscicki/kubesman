import 'package:flutter/material.dart';
import 'package:frontend/protos/api/core/v1/generated.pb.dart';

class PodsTable extends StatefulWidget {
  List<Pod> podList;
  PodsTable({super.key, required this.podList});

  @override
  State<PodsTable> createState() => PodsTableState();
}

class PodsTableState extends State<PodsTable> {
  List<String> namespaces = ['all'];
  String _choosenNamespace = 'all';
  List<Pod> pdlist = [];

  @override
  void initState() {
    pdlist.addAll(widget.podList);
    for (var item in pdlist) {
      if (!namespaces.contains(item.metadata.namespace)) {
        namespaces.add(item.metadata.namespace);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .08,
          height: MediaQuery.of(context).size.height * .08,
          child: DropdownButton<String>(
            value: _choosenNamespace,
            items: namespaces.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String? choosen) {
              setState(() {
                _choosenNamespace = choosen!;
                if (_choosenNamespace == 'all') {
                  pdlist = widget.podList;
                } else {
                  pdlist = widget.podList
                      .where((item) =>
                          item.metadata.namespace.contains(_choosenNamespace))
                      .toList();
                }
              });
            },
          ),
        ),
        DataTable(
            columns: [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Namespace")),
              DataColumn(label: Text("Status")),
              DataColumn(label: Text("Restarts")),
              // DataColumn(label: Text("Owner")),
              // // Need metrics support on backend
              // // DataColumn(label: Text("Memory")),
              // // DataColumn(label: Text("CPU")),
              DataColumn(label: Text("Created Date"))
            ],
            rows: pdlist
                .map((element) => DataRow(
                        onLongPress: () => {
                              _dialogBuilder(context, 'Pod', element.toString())
                            },
                        cells: [
                          DataCell(
                            Text(element.metadata.name),
                          ),
                          DataCell(Text(element.metadata.namespace)),
                          DataCell(Text(element.status.phase)),
                          DataCell(Text(element
                              .status.containerStatuses.first.restartCount
                              .toString())),
                          // DataCell(Text(item.metadata.ownerReferences.first.name)),
                          DataCell(Text(DateTime.fromMillisecondsSinceEpoch(
                                  element.metadata.creationTimestamp.seconds
                                          .toInt() *
                                      1000,
                                  isUtc: false)
                              .toIso8601String()))
                        ]))
                .toList())
      ],
    );
  }
}

Future<void> _dialogBuilder(BuildContext context, String type, String data) {
  String header = '$type information';
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(header),
        content: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Text(data),
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
    },
  );
}
