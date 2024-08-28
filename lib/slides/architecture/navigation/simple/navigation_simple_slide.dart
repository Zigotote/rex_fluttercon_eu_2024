import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'navigation_simple_app.dart';

class NavigationSimpleSlide extends FlutterDeckSlideWidget {
  const NavigationSimpleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/navigation-simple',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 5, right: 3),
      leftBuilder: (_) => FlutterDeckSlideStepsBuilder(
        builder: (BuildContext context, int stepNumber) => const Column(
          children: [
            FlutterDeckHeader(title: "Navigation avec GoRouter"),
            FlutterDeckCodeHighlight(
              code: '''
class NavigationSimpleApp extends StatelessWidget {
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
                  onPressed: () => context.push("/page/\$index"),
                  child: Text("Go to page \$index"),
                ),
              ),
            ),
          ),
          GoRoute(
              path: "/page/:id",
              builder: (context, state) => Scaffold(
                  appBar: AppBar(),
                  body: Center(
                    child: Text("This is page \${state.pathParameters["id"]}"),
                  ),
              ),
          )
        ],
      ),
    );
  }
}''',
              language: 'dart',
            ),
          ],
        ),
      ),
      rightBuilder: (_) => const NavigationSimpleApp(),
    );
  }
}
