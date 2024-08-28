import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PresentFlutterConSlide extends FlutterDeckSlideWidget {
  const PresentFlutterConSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/present-flutter-con',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: "FlutterCon Europe 2024"),
      contentBuilder: (_) => Stack(
        children: [
          Image.asset("assets/images/citycube.jpg"),
          FlutterDeckBulletList(
            items: const [
              "3 au 5 juillet 2024",
              "~2 000 participants",
              "97 speakers",
              "88 talks"
            ],
          ),
        ],
      ),
    );
  }
}
