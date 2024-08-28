import 'package:rex_fluttercon_eu_2024/slides/features/title_features_slide.dart';
import 'package:rex_fluttercon_eu_2024/utils/title_slide_template.dart';

class TitleSavingDataSlide extends TitleSlideTemplate {
  static const subtitle = "Sauvegarder des données";

  TitleSavingDataSlide()
      : super(
          route: '/saving-data-title',
          title: TitleFeaturesSlide.title,
          subtitle: subtitle,
          talks: [
            "Saving data before the app gets killed! (Lucas Goldner, Youtrust)"
          ],
        );
}
