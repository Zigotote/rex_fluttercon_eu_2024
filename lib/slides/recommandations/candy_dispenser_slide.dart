import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CandyDispenserSlide extends FlutterDeckSlideWidget {
  const CandyDispenserSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/candy-dispenser'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) => const FlutterDeckHeader(
          title:
              "M&Ms your way: build a fun, Flutter-Powered candy dispenser on Raspberry Pi 5 (Moritz Theis & Payam Zahedi, Snapp)"),
      contentBuilder: (_) =>
          Center(child: Image.asset("assets/images/candy_dispenser.jpg")),
    );
  }
}
