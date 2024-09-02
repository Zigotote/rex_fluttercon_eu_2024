import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeroExample extends StatelessWidget {
  const HeroExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => Scaffold(
              body: ListView.separated(
                itemCount: 100,
                itemBuilder: (_, index) => ElevatedButton(
                  onPressed: () => context.push("/page/$index"),
                  child: Hero(
                    tag: index,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text("Go to page $index"),
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 16),
              ),
            ),
          ),
          GoRoute(
              path: "/page/:id",
              builder: (context, state) {
                final index = int.parse(state.pathParameters["id"]!);
                return Scaffold(
                  appBar: AppBar(),
                  body: Center(
                    child: Hero(
                      tag: index,
                      child: Material(
                        type: MaterialType.transparency,
                        child: Text("This is page $index"),
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
