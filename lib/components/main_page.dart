import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:life_wasted/components/bottom_navigation.dart';
import 'package:life_wasted/components/life_chart.dart';
import 'package:life_wasted/mobx/store.dart';
import 'package:life_wasted/util/week.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  final DateTime min = DateTime.now().subtract(90.toYearsDuration);
  final DateTime max =
      DateTime.now().subtract(THRESHOLD.toYearsDuration).add(1.toDaysDuraion);

  final _globalKey = GlobalKey();

  Future<void> _showCalendar(BuildContext context, MainStore store) async {
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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.calendar_month),
          onPressed: () => _showCalendar(context, store),
          // onShare: _shareScreenshot,
        ),
        body: RepaintBoundary(
          key: _globalKey,
          child: SafeArea(
            child: Life(
              dob: store.dob,
              yearsTotal: store.yearsTotal,
            ),
            minimum: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
