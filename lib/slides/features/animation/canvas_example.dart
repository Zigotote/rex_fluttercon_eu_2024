import 'dart:math';

import 'package:flutter/material.dart';

class CanvasExample extends StatefulWidget {
  const CanvasExample({super.key});

  @override
  State<CanvasExample> createState() => _CanvasExampleState();
}

class _CanvasExampleState extends State<CanvasExample> {
  double rotate = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(200),
              child: CustomPaint(
                painter: TrianglePainter(rotate: rotate),
                size: const Size(150, 150),
              ),
            ),
            Text("Rotation : ${(rotate * (180 / pi)).toInt()}")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              rotate = Random().nextDouble() * 2 * pi;
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}

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

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
