import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'title_code_generation_slide.dart';

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
          const FlutterDeckHeader(title: TitleCodeGenerationSlide.title),
      contentBuilder: (_) => Stack(
        children: [
          FlutterDeckBulletList(
            items: const [
              "Ne pas les analyser \u274C",
              "Les committer \u2705",
              "Fixer les versions de dépendances \u2705",
              "Committer les pubspec.lock des applications uniquement"
            ],
            useSteps: true,
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              child: Icon(Icons.file_copy_outlined, size: 200),
            ),
          )
        ],
      ),
    );
  }
}
