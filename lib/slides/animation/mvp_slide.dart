import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MvpSlide extends FlutterDeckSlideWidget {
  const MvpSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/animation-mvp',
            speakerNotes:
                "Bon MVP = 70% fonctionnalités métier, 20% UX (plaisir d'utiliser l'appli), 10% beauté de l'app",
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: "Minimum viable product"),
      contentBuilder: (_) =>
          Center(child: Image.asset("assets/images/mvp.jpg")),
    );
  }
}
