import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RateAppSlide extends FlutterDeckSlideWidget {
  const RateAppSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/rate-app'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) => const FlutterDeckHeader(
        title: "Review sur les stores avec in_app_review",
      ),
      contentBuilder: (_) => Center(
        child: Image.asset("assets/images/in_app_review.jpg"),
      ),
    );
  }
}
