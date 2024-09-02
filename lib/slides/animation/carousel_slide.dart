import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../../commons/centered_code_highlight.dart';
import 'carousel_example.dart';

class CarouselSlide extends FlutterDeckSlideWidget {
  const CarouselSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/carousel'),
        );

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
