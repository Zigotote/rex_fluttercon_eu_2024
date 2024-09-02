import 'package:rex_fluttercon_eu_2024/commons/title_slide_template.dart';

class TitleNavigationSlide extends TitleSlideTemplate {
  TitleNavigationSlide()
      : super(
          route: '/navigation-title',
          title: "\u{1F6E3} Go router builder \u{1F6E3}",
          talks: [
            "Navigation in Flutter - the not-so-obvious parts (Matej Rešetár, Leancode)",
            "Mastering real world use cases in Flutter with GoRouter and GoRouterBuilder (Max Weber, Flutter)"
          ],
        );
}
