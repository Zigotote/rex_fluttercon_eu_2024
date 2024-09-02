import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SavingDataSlide extends FlutterDeckSlideWidget {
  const SavingDataSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/saving-data',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) => const FlutterDeckHeader(
          title:
              "Saving data before the app getting killed! Easy state restoration with Flutter (Lucas Goldner, Youtrust)"),
      contentBuilder: (_) =>
          Center(child: Image.asset("assets/images/switch_app.png")),
    );
  }
}
