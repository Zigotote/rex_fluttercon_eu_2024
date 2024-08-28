import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleFeaturesSlide extends FlutterDeckSlideWidget {
  static const title = "Fonctionnalités";

  const TitleFeaturesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/features-title',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: title);
  }
}
