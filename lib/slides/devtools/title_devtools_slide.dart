import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleDevtoolsSlide extends FlutterDeckSlideWidget {
  static const title = "DevTools";

  const TitleDevtoolsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/devtools-title',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: title);
  }
}
