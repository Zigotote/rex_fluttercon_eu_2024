import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleArchitectureSlide extends FlutterDeckSlideWidget {
  static const title = "Structurer un projet Flutter";

  const TitleArchitectureSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/archi-title',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: title);
  }
}
