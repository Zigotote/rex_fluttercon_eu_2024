import 'package:rex_fluttercon_eu_2024/utils/title_slide_template.dart';

import '../title_architecture_slide.dart';

class TitleNavigationSlide extends TitleSlideTemplate {
  static const subtitle = "Go router builder";

  TitleNavigationSlide()
      : super(
          route: '/navigation-title',
          title: TitleArchitectureSlide.title,
          subtitle: subtitle,
          talks: [
            "Navigation in Flutter - the not-so-obvious parts (Matej Rešetár, Leancode)",
            "Mastering real world use cases in Flutter with GoRouter and GoRouterBuilder (Max Weber, Flutter)"
          ],
        );
}
