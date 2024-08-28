import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CodeMeetsArtSlide extends FlutterDeckSlideWidget {
  const CodeMeetsArtSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/code-meets-art'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) => const FlutterDeckHeader(
          title:
              "Code meets art: Flutter for creative coding (Roaa Khaddam, Widgetbook)"),
      contentBuilder: (_) =>
          Center(child: Image.asset("assets/images/art.jpg")),
    );
  }
}
