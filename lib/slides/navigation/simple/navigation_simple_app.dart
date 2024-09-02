import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rex_fluttercon_eu_2024/commons/app_home_widget.dart';
import 'package:rex_fluttercon_eu_2024/commons/app_page_widget.dart';

class NavigationSimpleApp extends StatelessWidget {
  const NavigationSimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => const AppHomeWidget(),
          ),
          GoRoute(
            path: "/page/:id",
            builder: (context, state) => AppPageWidget(
              id: int.parse(state.pathParameters["id"] ?? ""),
            ),
          )
        ],
      ),
    );
  }
}
