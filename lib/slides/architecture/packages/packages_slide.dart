import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rex_fluttercon_eu_2024/slides/architecture/packages/title_packages_slide.dart';

class PackagesSlide extends FlutterDeckSlideWidget {
  const PackagesSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/packages', steps: 4),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: TitlePackagesSlide.subtitle),
      contentBuilder: (_) => FlutterDeckBulletList(
        items: const [
          "Pour un repo multi packages : melos",
          "Gestion de state : provider, get_it ou riverpod",
          "Navigation : go_router ou auto_route",
          "Internationalisation : intl, l10n, i69n"
        ],
        useSteps: true,
      ),
    );
  }
}
