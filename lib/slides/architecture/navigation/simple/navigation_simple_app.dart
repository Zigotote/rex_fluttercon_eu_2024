import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationSimpleApp extends StatelessWidget {
  const NavigationSimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => Scaffold(
              body: ListView.builder(
                itemBuilder: (_, index) => ElevatedButton(
                  onPressed: () => context.push("/page/$index"),
                  child: Text("Go to page $index"),
                ),
              ),
            ),
          ),
          GoRoute(
              path: "/page/:id",
              builder: (context, state) => Scaffold(
                  appBar: AppBar(),
                  body: Center(
                    child: Text("This is page ${state.pathParameters["id"]}"),
                  )))
        ],
      ),
    );
  }
}
