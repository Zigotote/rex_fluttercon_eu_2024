import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rex_fluttercon_eu_2024/commons/app_home_widget.dart';
import 'package:rex_fluttercon_eu_2024/commons/app_page_widget.dart';

part 'navigation_builder_app.g.dart';

class NavigationBuilderApp extends StatelessWidget {
  const NavigationBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(routes: $appRoutes),
    );
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
  Widget build(BuildContext context, GoRouterState state) =>
      const AppHomeWidget();
}

class PageRoute extends GoRouteData {
  final int id;

  const PageRoute(this.id);

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      AppPageWidget(id: id);
}
