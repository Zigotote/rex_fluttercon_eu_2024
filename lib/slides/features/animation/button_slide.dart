import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../../utils/centered_code_highlight.dart';
import 'button_example.dart';

class ButtonSlide extends FlutterDeckSlideWidget {
  const ButtonSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/button',
            steps: 2,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) => Column(children: [
        const FlutterDeckHeader(title: "Button builders"),
        FlutterDeckSlideStepsBuilder(
          builder: (BuildContext context, int stepNumber) {
            return CenteredCodeHighlight(
              code: '''
TextButton(
  style: ButtonStyle(
    backgroundBuilder: (_, states, child) {
      ${stepNumber == 2 ? '''if (states.contains(WidgetState.pressed)) {
        return Image.asset("assets/dash.jpg");
      }
      ''' : ""}return Container(color: Colors.purple, child: child);
    },
    foregroundBuilder: (_, states, child) {
      if (states.contains(WidgetState.hovered)) {
        return const Text("What is hidden ?");
      }
      return Container(color: Colors.blueAccent, child: child);
    },
  ),
  onPressed: () {},
  child: const Text("Click me !"),
)''',
            );
          },
        )
      ]),
      rightBuilder: (_) => const ButtonExample(),
    );
  }
}
