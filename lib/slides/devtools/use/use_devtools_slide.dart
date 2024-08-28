import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'title_use_devtools_slide.dart';

class UseDevtoolsSlide extends FlutterDeckSlideWidget {
  const UseDevtoolsSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/use-devtools'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: TitleUseDevtoolsSlide.subtitle),
      contentBuilder: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/devtools.png"),
          const Text("Aperçu des devtools pour une app Flutter"),
        ],
      ),
    );
  }
}
