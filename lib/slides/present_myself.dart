import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PresentMyselfSlide extends FlutterDeckSlideWidget {
  const PresentMyselfSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/present-myself',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final autoSizeGroup = AutoSizeGroup();
    return FlutterDeckSlide.split(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: "FlutterCon Europe 2024"),
      leftBuilder: (BuildContext context) => CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 200,
        child: Image.asset("assets/images/oceane.jpg"),
      ),
      rightBuilder: (BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(Icons.perm_identity, size: 40),
              const SizedBox(width: 8),
              Expanded(
                child: AutoSizeText(
                  "Océane GILLARD",
                  group: autoSizeGroup,
                  minFontSize: 40,
                  maxFontSize: double.infinity,
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.business, size: 40),
              const SizedBox(width: 8),
              Expanded(
                child: AutoSizeText(
                  "Zenika",
                  group: autoSizeGroup,
                  minFontSize: 40,
                  maxFontSize: double.infinity,
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.work, size: 40),
              const SizedBox(width: 8),
              Expanded(
                child: AutoSizeText(
                  "Dev Flutter",
                  group: autoSizeGroup,
                  minFontSize: 40,
                  maxFontSize: double.infinity,
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Image.asset(
                "assets/images/github.png",
                height: 40,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: AutoSizeText(
                  "Zigotote",
                  group: autoSizeGroup,
                  minFontSize: 40,
                  maxFontSize: double.infinity,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
