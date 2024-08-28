import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rex_fluttercon_eu_2024/slides/devtools/tools/title_tools_devtools_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/devtools/tools/tools_devtools_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/devtools/use/title_use_devtools_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/devtools/use/use_devtools_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/features/animation/canvas_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/recommandations/art_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/recommandations/candy_dispenser_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/recommandations/migrating_to_flutter_slide.dart';
import 'package:rex_fluttercon_eu_2024/slides/recommandations/title_recommandations_slide.dart';

import 'slides/architecture/code_generation/code_generation_slide.dart';
import 'slides/architecture/code_generation/title_code_generation_slide.dart';
import 'slides/architecture/navigation/improved/navigation_improved_slide.dart';
import 'slides/architecture/navigation/navigation_simple_to_improved_slide.dart';
import 'slides/architecture/navigation/simple/navigation_simple_slide.dart';
import 'slides/architecture/navigation/title_navigation_slide.dart';
import 'slides/architecture/packages/packages_slide.dart';
import 'slides/architecture/packages/title_packages_slide.dart';
import 'slides/architecture/title_architecture_slide.dart';
import 'slides/devtools/title_devtools_slide.dart';
import 'slides/features/ab_testing/ab_testing_slide.dart';
import 'slides/features/ab_testing/title_ab_testing_slide.dart';
import 'slides/features/animation/animated_container_slide.dart';
import 'slides/features/animation/button_slide.dart';
import 'slides/features/animation/carousel_slide.dart';
import 'slides/features/animation/hero_slide.dart';
import 'slides/features/animation/title_animation_slide.dart';
import 'slides/features/saving_data/saving_data_slide.dart';
import 'slides/features/saving_data/title_saving_data_slide.dart';
import 'slides/features/title_features_slide.dart';
import 'slides/present_fluttercon.dart';
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
      slides: [
        const TitleSlide(),
        const PresentFlutterConSlide(),
        const TitleArchitectureSlide(),
        TitlePackagesSlide(),
        const PackagesSlide(),
        TitleNavigationSlide(),
        const NavigationSimpleSlide(),
        const NavigationSimpleToImprovedSlide(),
        const NavigationImprovedSlide(),
        TitleCodeGenerationSlide(),
        const CodeGenerationSlide(),
        const TitleFeaturesSlide(),
        TitleSavingDataSlide(),
        const SavingDataSlide(),
        TitleAnimationSlide(),
        const AnimatedContainerSlide(),
        const HeroSlide(),
        const CarouselSlide(),
        const ButtonSlide(),
        const CanvasSlide(),
        TitleAbTestingSlide(),
        const AbTestingSlide(),
        const TitleDevtoolsSlide(),
        TitleUseDevtoolsSlide(),
        const UseDevtoolsSlide(),
        TitleToolsDevtoolsSlide(),
        const ToolsDevtoolsSlide(),
        const TitleRecommandationsSlide(),
        const MigratingToFlutterSlide(),
        const CandyDispenserSlide(),
        const CodeMeetsArtSlide(),
      ],
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: "Océane GILLARD",
        description: "Flutter dev",
        socialHandle: "Zigotote",
        imagePath: "assets/images/oceane.jpg",
      ),
    );
  }
}
