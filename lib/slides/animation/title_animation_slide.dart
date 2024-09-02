import '../../commons/title_slide_template.dart';

class TitleAnimationSlide extends TitleSlideTemplate {
  TitleAnimationSlide()
      : super(
          route: '/animation-title',
          title: "\u{1FA84} Animer des widgets \u{1FA84}",
          talks: [
            "Animation vs delivery, do you really have to choose ? (Maxime Rougieux & Thomas Coumau, BAM Tech)",
            "Everything Material all at once (Taha Tesser & Mike Rydstrom, Flutter team)",
            "Enhance your Flutter painting skills (Romain Rastel, Dailyn)"
          ],
        );
}
