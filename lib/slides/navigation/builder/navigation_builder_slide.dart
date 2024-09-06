import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../../../commons/centered_code_highlight.dart';
import 'navigation_builder_app.dart';

class NavigationBuilderSlide extends FlutterDeckSlideWidget {
  const NavigationBuilderSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/navigation-builder',
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
part 'app.g.dart';

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
  Widget build(BuildContext context, GoRouterState state) => const HomeWidget();
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
  Widget build(BuildContext context, GoRouterState state) => PageWidget(id: id);
}''',
                3 => '''
class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (_, index) => ElevatedButton(
          onPressed: () => PageRoute(index).push(context), 
          // ou context.push("/page/\$index")
          child: Text("Aller à la page \$index"),
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 16),
      ),
    );
  }
}''',
                int() => "",
              },
              fileName: switch (stepNumber) {
                1 || 2 => "app.dart",
                3 => "home.dart",
                int() => "",
              },
            ),
          ],
        ),
      ),
      rightBuilder: (_) => const NavigationBuilderApp(),
    );
  }
}
