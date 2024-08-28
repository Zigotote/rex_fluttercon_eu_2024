import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleSlideTemplate extends FlutterDeckSlideWidget {
  final String route;
  final String title;
  final String _subtitle;
  final List<String> talks;

  TitleSlideTemplate({
    required this.route,
    required this.title,
    required String subtitle,
    required this.talks,
  })  : _subtitle = subtitle,
        super(
          configuration: FlutterDeckSlideConfiguration(
            route: route,
            footer: const FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: title,
      subtitle: _subtitle,
      footerBuilder: (_) => Padding(
        padding: const EdgeInsets.only(left: 8, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: talks
              .map((talk) =>
                  Text(talk, style: Theme.of(context).textTheme.titleLarge))
              .toList(),
        ),
      ),
    );
  }
}
