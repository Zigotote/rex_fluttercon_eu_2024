import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../../utils/centered_code_highlight.dart';
import 'title_saving_data_slide.dart';

class SavingDataSlide extends FlutterDeckSlideWidget {
  const SavingDataSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/saving-data', steps: 2),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      headerBuilder: (_) =>
          const FlutterDeckHeader(title: TitleSavingDataSlide.subtitle),
      contentBuilder: (_) => FlutterDeckSlideStepsBuilder(
        builder: (BuildContext context, int stepNumber) =>
            CenteredCodeHighlight(
          code: switch (stepNumber) {
            1 => '''
class _CounterState extends State<Counter> with RestorationMixin {
  final RestorableInt _count = RestorableInt(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Count is \${_count.value}'),
      floatingActionButton: IconButton(
        onPressed: () => setState(() => _count.value++),
        icon: Icon(Icons.add),
      ),
    );
  }

  @override
  String get restorationId => 'counter_page';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_index, 'count');
  }
}''',
            2 => "await tester.restartAndRestore();",
            int() => "",
          },
        ),
      ),
    );
  }
}
