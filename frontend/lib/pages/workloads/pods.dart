import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/protos/api/core/v1/generated.pb.dart' as Core;
import 'package:frontend/services/rest.dart';

class PodsPage extends StatefulWidget {
  const PodsPage({super.key});

  @override
  State<PodsPage> createState() => PodsPageState();
}

class PodsPageState extends State<PodsPage>
    with SingleTickerProviderStateMixin {
  Future<List<Core.Pod>> makeRequest() async {
    String url = "http://localhost:8080/pods";
    if (!kIsWasm && !kIsWeb) {
      if (Platform.isAndroid) {
        url = url.replaceAll("localhost", "10.0.2.2");
      }
    }
    final response =
        await RequestMixin.request("get", Uri.parse(url), {}, null);

    final pods = Core.PodList.fromBuffer(response.bodyBytes);

    return pods.items;
  }

  final GlobalKey<AnimatedListState> _key = GlobalKey();
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    Timer(Duration(milliseconds: 200), () => animationController.forward());
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Future<void> _dialogBuilder(BuildContext context, String data) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pod information'),
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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Core.Pod>>(
        future: makeRequest(),
        builder: (
          BuildContext context,
          AsyncSnapshot<List<Core.Pod>> snapshot,
        ) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold();
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
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
            if (snapshot.hasData) {
              return Scaffold(
                appBar: AppBar(
                  elevation: 0,
                ),
                body: AnimatedList(
                  key: _key,
                  initialItemCount: snapshot.data!.length,
                  itemBuilder: (_, index, animation) {
                    // рассчитать
                    double animationStart = 0.01 * index;
                    double animationEnd = animationStart + 0.4;
                    return SlideTransition(
                        key: UniqueKey(),
                        position: Tween(begin: Offset(2, 0), end: Offset(0, 0))
                            .animate(CurvedAnimation(
                                parent: animationController,
                                curve: Interval(animationStart, animationEnd,
                                    curve: Curves.ease))),
                        child: FadeTransition(
                            opacity: animationController,
                            child: Card(
                                color: Theme.of(context).colorScheme.secondary,
                                margin: const EdgeInsets.all(10),
                                child: ListTile(
                                  title: Text(
                                    snapshot.data![index].metadata.name,
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () => {
                                            _dialogBuilder(
                                                context,
                                                snapshot.data![index].metadata
                                                    .toString())
                                          },
                                      icon: Icon(Icons.info,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface)),
                                ))));
                  },
                ),
              );
            } else {
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
          } else {
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
        });
  }
}
