import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:life_wasted/util.dart';

const THRESHOLD = 13;

class BirthdayPicker extends StatelessWidget {
  final now = DateTime.now();
  final DateTime selected;
  final Function(DateTime dt) onConfirm;
  BirthdayPicker({@required this.selected, @required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    final visible =
        selected.isAfter(now) || now.difference(selected).inYears < THRESHOLD;
    return Visibility(
      visible: visible,
      child: DatePickerWidget(
        onConfirm: (d, _) => onConfirm(d),
      ),
    );
  }
}
