import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rex_fluttercon_eu_2024/commons/centered_code_highlight.dart';

import 'navigation_simple_app.dart';

class NavigationSimpleSlide extends FlutterDeckSlideWidget {
  const NavigationSimpleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/navigation-simple',
            steps: 3,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 5, right: 3),
      leftBuilder: (_) => FlutterDeckSlideStepsBuilder(
        builder: (BuildContext context, int stepNumber) => Column(
          children: [
            const FlutterDeckHeader(title: "Navigation avec GoRouter"),
            CenteredCodeHighlight(
              code: switch (stepNumber) {
                1 => '''
class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (_, index) => ElevatedButton(
          onPressed: () => context.push("/page/\$index"),
          child: Text("Aller à la page \$index"),
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 16),
      ),
    );
  }
}''',
                2 => '''
class PageWidget extends StatelessWidget {
  final int id;

  const PageWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page \$id")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("myRandomPicture.jpg"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                ElevatedButton(
                  onPressed: () => context.push("/page/\${id - 1}"),
                  child: const Text("Page précédente"),
                ),
                ElevatedButton(
                  onPressed: () => context.push("/page/\${id + 1}"),
                  child: const Text("Page suivante"),
                )
            ],
          )
        ],
      ),
    );
  }
}''',
                3 => '''
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => const HomeWidget(),
          ),
          GoRoute(
            path: "/page/:id",
            builder: (context, state) => PageWidget(
              id: int.parse(state.pathParameters["id"] ?? ""),
            ),
          )
        ],
      ),
    );
  }
}''',
                int() => "",
              },
              fileName: switch (stepNumber) {
                1 => "home.dart",
                2 => "page.dart",
                3 => "app.dart",
                int() => "",
              },
            ),
          ],
        ),
      ),
      rightBuilder: (_) => const NavigationSimpleApp(),
    );
  }
}
