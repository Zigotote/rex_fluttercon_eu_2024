import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleRecommandationsSlide extends FlutterDeckSlideWidget {
  static const title = "Quelques recommandations";

  const TitleRecommandationsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/recommandations-title',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: title);
  }
}
