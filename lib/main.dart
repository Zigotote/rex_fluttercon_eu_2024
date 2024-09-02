import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rex_fluttercon_eu_2024/slides/performances/performances_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/performances/title_performance_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/questions_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/recommandations/saving_data_slide.dart';

import 'slides/animation/carousel_slide.dart';
import 'slides/animation/hero_slide.dart';
import 'slides/animation/mvp_slide.dart';
import 'slides/animation/title_animation_slide.dart';
import 'slides/code_generation/code_generation_slide.dart';
import 'slides/code_generation/title_code_generation_slide.dart';
import 'slides/navigation/builder/navigation_builder_slide.dart';
import 'slides/navigation/navigation_simple_to_improved_slide.dart';
import 'slides/navigation/simple/navigation_simple_slide.dart';
import 'slides/navigation/title_navigation_slide.dart';
import 'slides/present_fluttercon.dart';
import 'slides/present_myself.dart';
import 'slides/rate_app/rate_app_slide.dart';
import 'slides/rate_app/title_rate_app_slide.dart';
import 'slides/recommandations/art_slide.dart';
import 'slides/recommandations/candy_dispenser_slide.dart';
import 'slides/recommandations/migrating_to_flutter_slide.dart';
import 'slides/recommandations/title_recommandations_slide.dart';
import 'slides/title_slide.dart';

void main() {
  runApp(const Slides());
}

class Slides extends StatelessWidget {
  const Slides({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: const FlutterDeckConfiguration(
        transition: FlutterDeckTransition.fade(),
      ),
      darkTheme: FlutterDeckThemeData.dark().copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          leftBackgroundColor: Colors.black54,
          leftColor: Colors.white,
          rightBackgroundColor: Colors.black54,
          rightColor: Colors.white,
        ),
      ),
      slides: [
        const TitleSlide(),
        const PresentMyselfSlide(),
        const PresentFlutterConSlide(),
        TitleNavigationSlide(),
        const NavigationSimpleSlide(),
        const NavigationSimpleToImprovedSlide(),
        const NavigationBuilderSlide(),
        TitleCodeGenerationSlide(),
        const CodeGenerationSlide(),
        TitleAnimationSlide(),
        const HeroSlide(),
        const CarouselSlide(),
        const MvpSlide(),
        TitleRateAppSlide(),
        const RateAppSlide(),
        TitlePerformancesSlide(),
        const PerformancesSlide(),
        TitleRecommandationsSlide(),
        const SavingDataSlide(),
        const MigratingToFlutterSlide(),
        const CandyDispenserSlide(),
        const CodeMeetsArtSlide(),
        const QuestionsSlide(),
      ],
    );
  }
}
