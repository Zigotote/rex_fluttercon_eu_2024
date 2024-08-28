import 'package:rex_fluttercon_eu_2024/slides/features/title_features_slide.dart';
import 'package:rex_fluttercon_eu_2024/utils/title_slide_template.dart';

class TitleAnimationSlide extends TitleSlideTemplate {
  static const subtitle = "Animer des widgets \u{1FA84}";

  TitleAnimationSlide()
      : super(
          route: '/animation-title',
          title: TitleFeaturesSlide.title,
          subtitle: subtitle,
          talks: [
            "Animation vs delivery, do you really have to choose ? (Maxime Rougieux & Thomas Coumau, BAM Tech)",
            "Everything Material all at once (Taha Tesser & Mike Rydstrom, Flutter team)",
            "Enhance your Flutter painting skills (Romain Rastel, Dailyn)"
          ],
        );
}
