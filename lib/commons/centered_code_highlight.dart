import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CenteredCodeHighlight extends FlutterDeckCodeHighlight {
  const CenteredCodeHighlight(
      {super.key, required super.code, super.language, super.fileName});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Center(child: super.build(context)));
  }
}
