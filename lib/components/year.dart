import 'package:flutter/material.dart';
import 'package:life_wasted/components/week.dart';
import '../util.dart';

class Year extends StatelessWidget {
  final int weeksChecked;
  Year({this.weeksChecked = 0});
  @override
  Widget build(BuildContext context) {
    final weeks = List.generate(WEEKS_IN_YEAR, (i) => i < weeksChecked);
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth / WEEKS_IN_YEAR;
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: weeks
            .map((checked) => Week(checked: checked, width: width))
            .toList(),
      );
    });
  }
}
