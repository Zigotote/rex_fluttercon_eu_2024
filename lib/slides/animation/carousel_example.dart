import 'package:flutter/material.dart';

class CarouselExample extends StatelessWidget {
  const CarouselExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselView(
        itemExtent: 600,
        children: List.generate(
          10,
          (int index) => ColoredBox(
            color: Colors.primaries[index].withOpacity(0.5),
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
