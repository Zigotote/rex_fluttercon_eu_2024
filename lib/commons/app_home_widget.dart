import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppHomeWidget extends StatelessWidget {
  final bool hasHero;

  const AppHomeWidget({super.key, this.hasHero = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (_, index) {
          final text = Text("Aller à la page $index");
          return ElevatedButton(
            onPressed: () => context.push("/page/$index"),
            // avec go_router_builder peut aussi être : PageRoute(index).push(context)
            child: hasHero
                ? Hero(
                    tag: index,
                    child:
                        Material(type: MaterialType.transparency, child: text),
                  )
                : text,
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 16),
      ),
    );
  }
}
