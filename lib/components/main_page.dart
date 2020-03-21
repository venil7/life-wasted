import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:life_wasted/components/floating_action_menu.dart';
import 'package:provider/provider.dart';
import 'package:life_wasted/components/bottom_navigation.dart';
import 'package:life_wasted/components/life.dart';
import 'package:life_wasted/mobx/store.dart';
import 'package:life_wasted/util.dart';

class MainPage extends StatelessWidget {
  final DateTime min = DateTime.now().subtract(90.toYearsDuration);
  final DateTime max =
      DateTime.now().subtract(THRESHOLD.toYearsDuration).add(1.toDaysDuraion);

  _showCalendar(BuildContext context, MainStore store) async {
    final dob = await showDatePicker(
        context: context,
        initialDate: store.dob,
        firstDate: min,
        lastDate: max);
    if (dob != null) store.setUserDob(dob);
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MainStore>(context);

    return Observer(
      builder: (_) => Scaffold(
          bottomNavigationBar: BottomNavigation(
            userAge: store.userAge,
            onTap: store.setUserAge,
          ),
          floatingActionButton: FloatingActionMenu(
            onCalendar: () => _showCalendar(context, store),
            onShare: null,
          ),
          body: SafeArea(
            child: Life(
              dob: store.dob,
              yearsTotal: store.yearsTotal(),
              onDobChange: store.setUserDob,
            ),
            minimum: EdgeInsets.all(10),
          )),
    );
  }
}
