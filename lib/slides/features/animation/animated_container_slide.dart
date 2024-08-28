import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../../utils/centered_code_highlight.dart';
import 'animated_container_example.dart';

class AnimatedContainerSlide extends FlutterDeckSlideWidget {
  const AnimatedContainerSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/animated-container'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) => const Column(
        children: [
          FlutterDeckHeader(title: "Animated Container"),
          CenteredCodeHighlight(
            code: '''
AnimatedContainer(
  width: _width,
  height: _height,
  decoration: BoxDecoration(
    color: _color,
    borderRadius: _borderRadius,
  ),
  duration: const Duration(seconds: 1),
  curve: Curves.fastOutSlowIn,
)''',
          ),
        ],
      ),
      rightBuilder: (_) => const AnimatedContainerExample(),
    );
  }
}
