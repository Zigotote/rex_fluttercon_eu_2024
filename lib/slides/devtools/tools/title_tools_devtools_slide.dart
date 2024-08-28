import 'package:rex_fluttercon_eu_2024/utils/title_slide_template.dart';

import '../title_devtools_slide.dart';

class TitleToolsDevtoolsSlide extends TitleSlideTemplate {
  static const String subtitle = "Outils";

  TitleToolsDevtoolsSlide()
      : super(
          route: '/tools-devtools-title',
          title: TitleDevtoolsSlide.title,
          subtitle: subtitle,
          talks: [
            "Building your very own DevTools extension (Enzo Conty, Freelance)"
          ],
        );
}
