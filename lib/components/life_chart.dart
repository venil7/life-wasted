import 'package:flutter/material.dart';
import 'package:life_wasted/components/wasted_label.dart';
import 'package:life_wasted/components/year.dart';
import 'package:life_wasted/domain/week.dart';
import 'package:life_wasted/util/week.dart';

class LifeChart extends StatelessWidget {
  final LifeData lifeData;

  LifeChart({
    required this.lifeData,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(maxHeight: constraints.maxHeight),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children:
                  lifeData.map((weekData) => Year(yearData: weekData)).toList(),
            ),
          ),
        );
      },
    );
  }
}

class Life extends StatelessWidget {
  final int yearsTotal;
  final DateTime dob;

  Life({
    this.yearsTotal = 90,
    required this.dob,
  });

  @override
  Widget build(BuildContext context) {
    final diff = DateTime.now().difference(dob);
    final weeksSoFar = diff.inWeeks;
    final yearsSoFar = diff.inYears;
    final lifeData = createLifeData(yearsTotal, weeksSoFar);
    return Stack(
      children: <Widget>[
        LifeChart(
          lifeData: lifeData,
        ),
        WastedLabel(
          yearsTotal: yearsTotal,
          yearsSoFar: yearsSoFar,
        )
      ],
    );
  }
}
