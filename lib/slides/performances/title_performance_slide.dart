import 'package:rex_fluttercon_eu_2024/commons/title_slide_template.dart';

class TitlePerformancesSlide extends TitleSlideTemplate {
  static const String title = "Performances";

  TitlePerformancesSlide()
      : super(
          route: '/performance-title',
          title: "\u{1F4CA} $title \u{1F4CA}",
          talks: [
            "Debugging performance issues with the Flutter DevTools (Alexandre Moureaux, BAM)",
            "Building your very own DevTools extension (Enzo Conty, Freelance)"
          ],
        );
}
