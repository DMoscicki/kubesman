import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/components/table_view.dart';
import 'package:frontend/pages/workloads/utils.dart';
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
              return Scaffold();
            }
            if (snapshot.hasData) {
              return Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                  ),
                  body: AnimatedList(
                    key: _key,
                    initialItemCount: 1,
                    itemBuilder: (_, index, animation) {
                      // рассчитать
                      double animationStart = 0.01 * index;
                      double animationEnd = animationStart + 0.4;

                      return SlideTransition(
                          key: UniqueKey(),
                          position:
                              Tween(begin: Offset(2, 0), end: Offset(0, 0))
                                  .animate(CurvedAnimation(
                                      parent: animationController,
                                      curve: Interval(
                                          animationStart, animationEnd,
                                          curve: Curves.ease))),
                          child: PodsTable(podList: snapshot.data!));
                    },
                  ));
            } else {
              return ErrorAlertDialog(context);
            }
          } else {
            return ErrorAlertDialog(context);
          }
        });
  }
}
