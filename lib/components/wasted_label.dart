import 'package:flutter/material.dart';
import 'package:life_wasted/util.dart';
import 'package:intl/intl.dart';

class WastedLabel extends StatelessWidget {
  final int yearsTotal;
  final double yearsSoFar;
  WastedLabel({this.yearsTotal, this.yearsSoFar});

  @override
  Widget build(BuildContext context) {
    final weeksTotal = yearsTotal.yearsInWeeks;
    final weeksSoFar = yearsSoFar.yearsInWeeks;
    final perecent = weeksSoFar.percentOf(weeksTotal);
    final format = new NumberFormat("###.0#", "en_US");

    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0x88888888),
          backgroundBlendMode: BlendMode.multiply,
        ),
        child: Text(
          '${format.format(perecent)}%, $weeksSoFar of anticipated $weeksTotal weeks of your life is wasted',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
