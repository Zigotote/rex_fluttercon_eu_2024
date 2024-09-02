import '../../commons/title_slide_template.dart';

class TitleCodeGenerationSlide extends TitleSlideTemplate {
  static const title = "Gestion des fichiers générés";

  TitleCodeGenerationSlide()
      : super(
          route: '/code-generation-title',
          title: "\u{1F4C2} $title \u{1F4C2}",
          talks: [
            "Your ultimate guide to code generation productivity for Dart and Flutter (Anna Leushchenko, Google)"
          ],
        );
}
