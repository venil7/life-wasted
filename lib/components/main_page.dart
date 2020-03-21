import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_wasted/components/bottom_navigation.dart';
import 'package:life_wasted/components/life.dart';
import 'package:life_wasted/mobx/store.dart';
import 'package:life_wasted/util.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MainStore>(context);
    final yearsSoFar = DateTime.now().difference(store.dob).inYears;

    return Observer(
      builder: (_) => Scaffold(
        bottomNavigationBar: BottomNavigation(
          userAge: store.userAge,
          onTap: store.setUserAge,
        ),
        floatingActionButton: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.shareSquare),
          onPressed: null,
        ),
        body: SafeArea(
          child: Life(
            yearsSoFar: yearsSoFar,
            yearsTotal: store.yearsTotal(),
          ),
          minimum: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
