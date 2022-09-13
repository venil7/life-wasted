import 'package:flutter/material.dart';
import 'package:life_wasted/components/week.dart';
import 'package:life_wasted/domain/week.dart';
import 'package:life_wasted/util/week.dart';

class Year extends StatelessWidget {
  final YearData yearData;

  Year({required this.yearData});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth / WEEKS_IN_YEAR;
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: yearData
            .map((weekData) => Week(
                  width: width,
                  weekData: weekData,
                ))
            .toList(),
      );
    });
  }
}
