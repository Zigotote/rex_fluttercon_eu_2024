import 'package:rex_fluttercon_eu_2024/slides/features/title_features_slide.dart';
import 'package:rex_fluttercon_eu_2024/utils/title_slide_template.dart';

class TitleAbTestingSlide extends TitleSlideTemplate {
  static const subtitle = "Evaluer une application";

  TitleAbTestingSlide()
      : super(
          route: '/ab-test-title',
          title: TitleFeaturesSlide.title,
          subtitle: subtitle,
          talks: [
            "Mastering A/B testing and feedback techniques in your mobile apps (Alicja Ogonowska, OLX Group)"
          ],
        );
}
