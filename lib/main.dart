import 'package:flutter/material.dart';
import 'package:life_wasted/components/life.dart';
import 'package:life_wasted/components/bottom_navigation.dart';
import './util.dart';

void main() {
  runApp(MyApp());
}

final yearsSoFar = DateTime.now().difference(DateTime(1990, 2, 4)).inYears;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        bottomNavigationBar:
            BottomNavigation(userAge: UserAge.fifty, onTap: null),
        floatingActionButton: FloatingActionButton(onPressed: null),
        body: SafeArea(
          child: Life(
            yearsSoFar: yearsSoFar,
          ),
          minimum: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
