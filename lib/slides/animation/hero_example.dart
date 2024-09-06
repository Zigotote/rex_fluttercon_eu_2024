import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rex_fluttercon_eu_2024/commons/app_home_widget.dart';
import 'package:rex_fluttercon_eu_2024/commons/app_page_widget.dart';

class HeroExample extends StatelessWidget {
  const HeroExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => const AppHomeWidget(hasHero: true),
          ),
          GoRoute(
            path: "/page/:id",
            builder: (context, state) => AppPageWidget(
              id: int.parse(state.pathParameters["id"] ?? ""),
              hasHero: true,
            ),
          )
        ],
      ),
    );
  }
}
