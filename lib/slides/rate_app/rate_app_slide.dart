import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'title_rate_app_slide.dart';

class RateAppSlide extends FlutterDeckSlideWidget {
  const RateAppSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/rate-app'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: TitleRateAppSlide.title),
      contentBuilder: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/in_app_review.jpg"),
          const Text("Review sur les stores : in_app_review")
        ],
      ),
    );
  }
}
