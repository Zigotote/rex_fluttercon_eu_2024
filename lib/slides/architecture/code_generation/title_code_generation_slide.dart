import 'package:rex_fluttercon_eu_2024/slides/architecture/title_architecture_slide.dart';

import '../../../utils/title_slide_template.dart';

class TitleCodeGenerationSlide extends TitleSlideTemplate {
  static const subtitle = "Gestion des fichiers générés";

  TitleCodeGenerationSlide()
      : super(
          route: '/code-generation-title',
          title: TitleArchitectureSlide.title,
          subtitle: subtitle,
          talks: [
            "Your ultimate guide to code generation productivity for Dart and Flutter (Anna Leushchenko, Google)"
          ],
        );
}
