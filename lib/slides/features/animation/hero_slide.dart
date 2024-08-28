import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../../utils/centered_code_highlight.dart';
import 'hero_example.dart';

class HeroSlide extends FlutterDeckSlideWidget {
  const HeroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/hero'),
        );

  /*      "CarouselView \u2705",
          "Button (Material)"*/
  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) => const Column(
        children: [
          FlutterDeckHeader(title: "Hero"),
          CenteredCodeHighlight(
            code: '''
// 1ère page
ElevatedButton(
  onPressed: () => context.push("/page/\$index"),
  child: Hero(
    tag: index, 
    child: Text("Go to page \$index")
  ),
)

// 2nde page
Hero(
  tag: index,
  child: Text("This is page \$index"),
),''',
          ),
        ],
      ),
      rightBuilder: (_) => const HeroExample(),
    );
  }
}
