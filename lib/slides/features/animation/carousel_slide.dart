import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rex_fluttercon_eu_2024/slides/features/animation/carousel_example.dart';

import '../../../utils/centered_code_highlight.dart';

class CarouselSlide extends FlutterDeckSlideWidget {
  const CarouselSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/carousel'),
        );

  /*      "CarouselView \u2705",
          "Button (Material)"*/
  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) => const Column(
        children: [
          FlutterDeckHeader(title: "CarouselView"),
          CenteredCodeHighlight(
            code: '''
CarouselView(
  itemExtent: 600,
  children: List.generate(
    10,
    (int index) => ColoredBox(
      color: Colors.primaries[index].withOpacity(0.5),
      child: Center(
        child: Text(
          'Item \$index',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),
  ),
)''',
          ),
        ],
      ),
      rightBuilder: (_) => const CarouselExample(),
    );
  }
}
