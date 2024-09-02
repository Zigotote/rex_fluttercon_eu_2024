import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'title_performance_slide.dart';

class PerformancesSlide extends FlutterDeckSlideWidget {
  const PerformancesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/performance',
            steps: 2,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: TitlePerformancesSlide.title),
      contentBuilder: (_) => FlutterDeckSlideStepsBuilder(
        builder: (_, int stepNumber) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\u2022 Flashlight : équivalent de lightouse pour les applications mobiles",
              style: FlutterDeckBulletListTheme.of(context).textStyle,
            ),
            if (stepNumber == 2)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  "\u2022 Votre propre outil créé avec flutter web",
                  style: FlutterDeckBulletListTheme.of(context).textStyle,
                ),
              ),
            if (stepNumber == 2)
              Text(
                " Building your very own DevTools extension (Enzo Conty, Freelance)",
                style: FlutterDeckBulletListTheme.of(context)
                    .textStyle
                    ?.copyWith(fontStyle: FontStyle.italic),
              )
          ],
        ),
      ),
    );
  }
}
