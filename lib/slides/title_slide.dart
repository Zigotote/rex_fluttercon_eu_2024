import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: "REX FlutterCon Europe 2024",
      subtitle: "17/09/2024",
    );
  }
}
