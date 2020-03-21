import 'package:flutter/material.dart';
import 'package:floating_action_row/floating_action_row.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FloatingActionMenu extends StatelessWidget {
  final Function() onCalendar;
  final Function() onShare;
  FloatingActionMenu({@required this.onCalendar, @required this.onShare});

  @override
  Widget build(BuildContext context) {
    return FloatingActionRow(
      color: Color(0xAAFF6E40),
      children: <Widget>[
        FloatingActionRowButton(
            icon: Icon(FontAwesomeIcons.calendarAlt), onTap: onCalendar),
        FloatingActionRowDivider(),
        FloatingActionRowButton(
            icon: Icon(FontAwesomeIcons.shareSquare), onTap: onShare),
      ],
    );
  }
}
