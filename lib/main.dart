import 'package:flutter/material.dart';
import 'package:life_wasted/components/life.dart';
import './util.dart';

void main() => runApp(MyApp());

final weeksSoFar = DateTime.now().difference(DateTime(1982, 3, 22)).inWeeks;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Life(
          weeksSoFar: weeksSoFar,
          yearsTotal: 90,
        ),
        minimum: EdgeInsets.all(30),
      ),
    );
  }
}
