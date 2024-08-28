import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundBuilder: (_, states, child) {
          if (states.contains(WidgetState.pressed)) {
            return Image.asset("assets/images/dash.jpg");
          }
          return Container(color: Colors.purple, child: child);
        },
        foregroundBuilder: (_, states, child) {
          if (states.contains(WidgetState.hovered)) {
            return const Text("What is hidden ?");
          }
          return Container(color: Colors.blueAccent, child: child);
        },
      ),
      onPressed: () {
        if (FlutterDeck.of(context).stepNumber == 1) {
          FlutterDeck.of(context).next();
        }
      },
      child: const Text("Click me !"),
    );
  }
}
