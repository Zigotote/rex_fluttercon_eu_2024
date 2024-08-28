import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rex_fluttercon_eu_2024/utils/centered_code_highlight.dart';

import 'navigation_improved_app.dart';

class NavigationImprovedSlide extends FlutterDeckSlideWidget {
  const NavigationImprovedSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/navigation-improved',
            steps: 3,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 5, right: 3),
      leftBuilder: (_) => FlutterDeckSlideStepsBuilder(
        builder: (BuildContext context, int stepNumber) => Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const FlutterDeckHeader(
              title: "Navigation avec GoRouterBuilder",
            ),
            CenteredCodeHighlight(
              code: switch (stepNumber) {
                1 => '''
part 'navigation_improved_app.g.dart';

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(routes: \$appRoutes),
    );
  }
}

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
  return Scaffold(
    body: ListView.builder(
      itemBuilder: (_, index) => ElevatedButton(
        onPressed: () {},
        child: Text("Go to page \$index"),
      ),
    );
  }
}''',
                2 => '''
@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<PageRoute>(
      path: 'page/:id',
    )
  ],
)
class HomeRoute extends GoRouteData { ... }

class PageRoute extends GoRouteData {
  final int id;

  const PageRoute(this.id);

  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        appBar: AppBar(),
        body: Center(child: Text("This is page \$id")),
      );
}''',
                3 => '''
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
onPressed: () => PageRoute(index).push(context),
//ou context.push("/page/\$index"),
child: Text("Go to page \$index"),
          ),
        ),
      );
}

class PageRoute extends GoRouteData { ... }''',
                int() => "",
              },
            ),
          ],
        ),
      ),
      rightBuilder: (_) => const NavigationApp(),
    );
  }
}
