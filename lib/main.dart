import 'package:flutter/material.dart';
import 'package:life_wasted/components/life.dart';
import './util.dart';

void main() {
  runApp(MyApp());
}

final yearsSoFar = DateTime.now().difference(DateTime(1982, 3, 22)).inYears;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: SafeArea(
        child: Life(
          yearsSoFar: yearsSoFar,
        ),
        minimum: EdgeInsets.all(30),
      ),
    );
  }
}
