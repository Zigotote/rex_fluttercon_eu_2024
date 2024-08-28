import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../../utils/centered_code_highlight.dart';

class NavigationSimpleToImprovedSlide extends FlutterDeckSlideWidget {
  const NavigationSimpleToImprovedSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/navigation-simple-to-improved',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) => const FlutterDeckHeader(
        title: "Navigation avec GoRouter -> go_router_builder",
      ),
      contentBuilder: (_) => const CenteredCodeHighlight(
        code: '''
flutter pub add go_router_builder --dev
flutter pub add build_runner --dev''',
        language: "shell",
      ),
    );
  }
}
