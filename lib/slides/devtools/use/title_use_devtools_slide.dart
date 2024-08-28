import 'package:rex_fluttercon_eu_2024/utils/title_slide_template.dart';

import '../title_devtools_slide.dart';

class TitleUseDevtoolsSlide extends TitleSlideTemplate {
  static const String subtitle = "Usages";

  TitleUseDevtoolsSlide()
      : super(
          route: '/use-devtools-title',
          title: TitleDevtoolsSlide.title,
          subtitle: subtitle,
          talks: [
            "Debugging performance issues with the Flutter DevTools (Alexandre Moureaux, BAM)"
          ],
        );
}
