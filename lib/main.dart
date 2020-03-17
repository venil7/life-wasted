import 'package:flutter/material.dart';
import 'package:life_wasted/components/life.dart';
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
        bottomNavigationBar: BottomAppBar(
          color: ThemeData.dark().accentColor,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                title: Text('Business'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text('School'),
              ),
            ],
            currentIndex: 1,
            selectedItemColor: Colors.amber[800],
            onTap: null,
          ),
        ),
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
