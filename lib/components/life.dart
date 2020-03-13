import 'package:flutter/material.dart';
import 'package:life_wasted/components/year.dart';
import 'package:life_wasted/util.dart';

class Life extends StatelessWidget {
  final int weeksSoFar;
  final int yearsTotal;
  Life({this.weeksSoFar = 0, this.yearsTotal = 90});
  @override
  Widget build(BuildContext context) {
    final years = List.generate(
        yearsTotal,
        (y) => weeksSoFar - y * WEEKS_IN_YEAR > WEEKS_IN_YEAR
            ? WEEKS_IN_YEAR
            : weeksSoFar - y * WEEKS_IN_YEAR);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: years
          .map((weeksChecked) => Year(weeksChecked: weeksChecked))
          .toList(),
    );
  }
}
