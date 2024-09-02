import 'package:rex_fluttercon_eu_2024/commons/title_slide_template.dart';

class TitleRateAppSlide extends TitleSlideTemplate {
  static const title = "Evaluer une application";

  TitleRateAppSlide()
      : super(
          route: '/rate-app-title',
          title: "\u{1f4ac} $title \u{1f4ac}",
          talks: [
            "Mastering A/B testing and feedback techniques in your mobile apps (Alicja Ogonowska, OLX Group)"
          ],
        );
}
