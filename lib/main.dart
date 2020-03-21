import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:life_wasted/mobx/store.dart';
import 'package:life_wasted/components/main_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Provider<MainStore>(
        create: (_) => MainStore(),
        child: MainPage(),
      ),
    );
  }
}
