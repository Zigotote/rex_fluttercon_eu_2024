import 'package:rex_fluttercon_eu_2024/slides/architecture/title_architecture_slide.dart';

import '../../../utils/title_slide_template.dart';

class TitlePackagesSlide extends TitleSlideTemplate {
  static const subtitle = "Librairies";

  TitlePackagesSlide()
      : super(
          route: '/packages-title',
          title: TitleArchitectureSlide.title,
          subtitle: subtitle,
          talks: [
            "Modular Flutter app architecture: answering the What, When and How (Salih Guler, AWS)"
          ],
        );
}
