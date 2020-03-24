import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class WastedLabel extends StatelessWidget {
  final int weeksTotal;
  final int weeksWasted;
  WastedLabel({this.weeksTotal, this.weeksWasted});

  @override
  Widget build(BuildContext context) {
    return StyledText(
      text: 'Test: <b>bold</b> text.',
      styles: {
        'b': TextStyle(fontWeight: FontWeight.bold),
      },
    );
  }
}
