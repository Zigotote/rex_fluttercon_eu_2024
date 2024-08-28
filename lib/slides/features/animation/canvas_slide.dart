import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rex_fluttercon_eu_2024/slides/features/animation/canvas_example.dart';

import '../../../utils/centered_code_highlight.dart';

class CanvasSlide extends FlutterDeckSlideWidget {
  const CanvasSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/canvas'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) => Column(children: [
        const FlutterDeckHeader(title: "Canvas"),
        FlutterDeckSlideStepsBuilder(
          builder: (BuildContext context, int stepNumber) {
            return const CenteredCodeHighlight(
              code: '''
class TrianglePainter extends CustomPainter {
  final double rotate;

  TrianglePainter({required this.rotate});

  @override
  void paint(Canvas canvas, Size size) {
    final x = size.width;
    final y = size.height;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.indigo;
    final tianglePath = Path()
      ..moveTo(0, y)
      ..lineTo(x / 2, 0)
      ..lineTo(x, y)
      ..lineTo(0, y);

    canvas.rotate(rotate);
    canvas.drawPath(tianglePath, paint);
  }
}''',
            );
          },
        )
      ]),
      rightBuilder: (_) => const CanvasExample(),
    );
  }
}
