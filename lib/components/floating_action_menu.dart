import 'package:flutter/material.dart';

class FloatingActionMenu extends StatelessWidget {
  final Function() onCalendar;
  final Function() onShare;
  FloatingActionMenu({
    required this.onCalendar,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
    // return FloatingActionRow(
    //   color: Color(0xAAFF6E40),
    //   children: <Widget>[
    //     FloatingActionRowButton(
    //       icon: Icon(FontAwesomeIcons.calendarDays),
    //       onTap: onCalendar,
    //     ),
    //     FloatingActionRowDivider(),
    //     FloatingActionRowButton(
    //       icon: Icon(FontAwesomeIcons.shareFromSquare),
    //       onTap: onShare,
    //     ),
    //   ],
    // );
  }
}
