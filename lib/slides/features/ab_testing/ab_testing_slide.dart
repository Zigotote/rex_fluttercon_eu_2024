import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'title_ab_testing_slide.dart';

class AbTestingSlide extends FlutterDeckSlideWidget {
  const AbTestingSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/ab-testing', steps: 3),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: TitleAbTestingSlide.subtitle),
      contentBuilder: (_) => FlutterDeckSlideStepsBuilder(
          builder: (_, stepNumber) => switch (stepNumber) {
                1 => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/in_app_review.jpg"),
                      const Text("Review sur les stores : in_app_review")
                    ],
                  ),
                2 => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 300),
                        child: Image.asset("assets/images/wiredash.png"),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Commentaire dans l'application : wiredash (payant)",
                          ),
                        ),
                      )
                    ],
                  ),
                3 => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AspectRatio(
                        aspectRatio: 1600 / 750,
                        child: Image.asset(
                            "assets/images/firebase_ab_testing.jpg"),
                      ),
                      const Text("A/B test : firebase")
                    ],
                  ),
                int() => Container(),
              }),
    );
  }
}
