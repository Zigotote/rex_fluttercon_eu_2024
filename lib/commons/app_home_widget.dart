import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppHomeWidget extends StatelessWidget {
  const AppHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (_, index) => ElevatedButton(
          onPressed: () => context.push("/page/$index"),
          // avec go_router_builder peut aussi être : PageRoute(index).push(context)
          child: Text("Aller à la page $index"),
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 16),
      ),
    );
  }
}
