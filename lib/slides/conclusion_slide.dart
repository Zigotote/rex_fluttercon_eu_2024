import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConclusionSlide extends FlutterDeckSlideWidget {
  const ConclusionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conclusion',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: "Avez-vous des questions ?"),
      contentBuilder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/qr_code_videos.png"),
              const Text("https://www.droidcon.com/content")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/flutter_deck.png", width: 600),
              const Text("https://pub.dev/packages/flutter_deck")
            ],
          ),
        ],
      ),
    );
  }
}
