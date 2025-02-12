import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/pages/workloads/utils.dart';
import 'package:frontend/protos/api/core/v1/generated.pb.dart' as Core;
import 'package:frontend/protos/metrics/pkg/apis/metrics/v1beta1/generated.pb.dart';
import 'package:frontend/services/logger.dart';
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

  // Map to store metrics for each pod
  Map<String, PodMetrics> podMetricsMap = {};
  late Timer _metricsPollingTimer;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    Timer(
        const Duration(milliseconds: 200), () => animationController.forward());

    // Start polling for metrics
    _startMetricsPolling();

    super.initState();
  }

  @override
  void dispose() {
    _metricsPollingTimer
        .cancel(); // Cancel the timer when the widget is disposed
    animationController.dispose();
    super.dispose();
  }

  void _startMetricsPolling() {
    _metricsPollingTimer =
        Timer.periodic(const Duration(seconds: 5), (_) async {
      await _fetchPodMetrics();
    });
  }

  Future<void> _fetchPodMetrics() async {
    try {
      // Fetch metrics from the Kubernetes Metrics API
      String metricsUrl = "http://localhost:8080/metrics/pods";
      if (!kIsWasm && !kIsWeb) {
        if (Platform.isAndroid) {
          metricsUrl = metricsUrl.replaceAll("localhost", "10.0.2.2");
        }
      }

      final response =
          await RequestMixin.request("get", Uri.parse(metricsUrl), {}, null);

      if (response.statusCode == 200) {
        // Parse the response using the generated protobuf classes
        final podMetricsList = PodMetricsList.fromBuffer(response.bodyBytes);

        setState(() {
          for (var podMetric in podMetricsList.items) {
            final podName = podMetric.metadata.name;

            // Extract CPU and memory usage from the first container
            final containerMetrics = podMetric.containers.isNotEmpty
                ? podMetric.containers.first.usage
                : {'cpu': 'N/A', 'memory': 'N/A'};

            // Update metrics map
            podMetricsMap[podName] = PodMetrics(
              cpuUsage: containerMetrics['cpu'].toString() ?? 'N/A',
              memoryUsage: containerMetrics['memory'].toString() ?? 'N/A',
            );
          }
        });
      } else {
        logger.e(response.body);
        print('Failed to fetch metrics: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching metrics: $e');
    }
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
            return Scaffold();
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
                  final pod = snapshot.data![index];
                  final podName = pod.metadata.name;

                  // Get metrics for the current pod
                  final metrics = podMetricsMap[podName] ??
                      PodMetrics(cpuUsage: 'N/A', memoryUsage: 'N/A');

                  double animationStart = 0.01 * index;
                  double animationEnd = animationStart + 0.4;
                  return SlideTransition(
                    key: UniqueKey(),
                    position: Tween(
                            begin: const Offset(2, 0), end: const Offset(0, 0))
                        .animate(CurvedAnimation(
                      parent: animationController,
                      curve: Interval(animationStart, animationEnd,
                          curve: Curves.ease),
                    )),
                    child: FadeTransition(
                      opacity: animationController,
                      child: Card(
                        color: Theme.of(context).colorScheme.secondary,
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(
                            pod.metadata.name,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.surface,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('CPU: ${metrics.cpuUsage}'),
                              Text('Memory: ${metrics.memoryUsage}'),
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: () => {
                              _dialogBuilder(
                                context,
                                pod.metadata.toString(),
                              ),
                            },
                            icon: Icon(
                              Icons.info,
                              color: Theme.of(context).colorScheme.surface,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return ErrorAlertDialog(context);
          }
        } else {
          return ErrorAlertDialog(context);
        }
      },
    );
  }
}

// Model class for Pod Metrics
class PodMetrics {
  final String cpuUsage;
  final String memoryUsage;

  PodMetrics({required this.cpuUsage, required this.memoryUsage});
}
