import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppPageWidget extends StatelessWidget {
  final int id;

  const AppPageWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page $id")),
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
