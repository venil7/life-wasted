import 'package:flutter/material.dart';
import 'package:life_wasted/components/year.dart';
import 'package:life_wasted/util.dart';

class Life extends StatelessWidget {
  final double yearsSoFar;
  final int yearsTotal;
  Life({this.yearsSoFar = 0.0, this.yearsTotal = 90});
  @override
  Widget build(BuildContext context) {
    final fullYearsSoFar = yearsSoFar.floor();
    final years = List.generate(yearsTotal, (y) {
      final year = y + 1;
      return year <= fullYearsSoFar
          ? WEEKS_IN_YEAR
          : (year == fullYearsSoFar + 1
              ? (yearsSoFar.fractional().yearToWeeks.floor())
              : 0);
    });

    return LayoutBuilder(
      builder: (ctx, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(maxHeight: constraints.maxHeight),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: years
                  .map((weeksChecked) => Year(weeksChecked: weeksChecked))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
