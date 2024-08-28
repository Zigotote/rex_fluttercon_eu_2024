import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'navigation_improved_app.g.dart';

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: GoRouter(routes: $appRoutes));
  }
}

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<PageRoute>(
      path: 'page/:id',
    )
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        body: ListView.builder(
          itemBuilder: (_, index) => ElevatedButton(
            onPressed: () => context.push("/page/$index"),
            //PageRoute(index).push(context),
            child: Text("Go to page $index"),
          ),
        ),
      );
}

class PageRoute extends GoRouteData {
  final int id;

  const PageRoute(this.id);

  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        appBar: AppBar(),
        body: Center(child: Text("This is page $id")),
      );
}
