import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppPageWidget extends StatelessWidget {
  final int id;
  final bool hasHero;

  const AppPageWidget({super.key, required this.id, this.hasHero = false});

  @override
  Widget build(BuildContext context) {
    final text = Text("Page $id");
    return Scaffold(
      appBar: AppBar(
        title: hasHero
            ? Hero(
                tag: id,
                child: Material(type: MaterialType.transparency, child: text),
              )
            : text,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/picture${id % 9 + 1}.jpg",
            height: 600,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (id >= 1)
                ElevatedButton(
                  onPressed: () => context.push("/page/${id - 1}"),
                  child: const Text("Page précédente"),
                ),
              if (id <= 99)
                ElevatedButton(
                  onPressed: () => context.push("/page/${id + 1}"),
                  child: const Text("Page suivante"),
                )
            ],
          )
        ],
      ),
    );
  }
}
