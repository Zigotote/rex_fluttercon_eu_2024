import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rex_fluttercon_eu_2024/slides/architecture/packages/title_packages_slide.dart';

class CodeGenerationSlide extends FlutterDeckSlideWidget {
  const CodeGenerationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/code-generation',
            steps: 4,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: TitlePackagesSlide.subtitle),
      contentBuilder: (_) => FlutterDeckBulletList(
        items: const [
          "Ne pas les analyser \u274C",
          "Les committer \u2705",
          "Fixer les versions de dépendances \u2705",
          "Committer les pubspec.lock des applications uniquement"
        ],
        useSteps: true,
      ),
    );
  }
}
