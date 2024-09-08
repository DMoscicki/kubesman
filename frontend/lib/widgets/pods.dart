import 'package:flutter/material.dart';

class PodsCard extends StatelessWidget {
  const PodsCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        height: 280,
        width: 260,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 6, right: 8),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 8),
                      child: Text(
                        "Build and animate an iOS app from scratch",
                        style: TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    const Text(
                      "61 SECTIONS - 11 HOURS",
                      style: TextStyle(
                        color: Colors.white38,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: List.generate(
                        3,
                        (index) => Transform.translate(
                          offset: Offset((-10 * index).toDouble(), 0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              "assets/avaters/Avatar ${index + 1}.jpg",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
