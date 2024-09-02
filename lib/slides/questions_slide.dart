import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QuestionsSlide extends FlutterDeckSlideWidget {
  const QuestionsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/questions',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (_) => Image.asset("assets/images/questions.jpg"),
    );
  }
}
