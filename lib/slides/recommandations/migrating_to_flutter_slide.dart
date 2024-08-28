import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigratingToFlutterSlide extends FlutterDeckSlideWidget {
  const MigratingToFlutterSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/migrating-to-flutter'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) => const FlutterDeckHeader(
          title:
              "Migrating 2+ Million daily users to Flutter with 50+ Engineers (Bruno Reginato & Csongor Vogel & Lucas Britto, Delivery Hero)"),
      contentBuilder: (_) =>
          Center(child: Image.asset("assets/images/delivery_hero.jpg")),
    );
  }
}
