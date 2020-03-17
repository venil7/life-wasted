import 'package:flutter/material.dart';

class WeekPainter extends CustomPainter {
  final bool checked;
  WeekPainter(this.checked);

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final center = Offset(width / 2, width / 2);
    final paint = Paint();
    paint.color = checked ? Colors.deepOrangeAccent : Colors.greenAccent;
    canvas.drawCircle(center, width / 2 - 1, paint);
  }

  @override
  bool shouldRepaint(WeekPainter old) {
    return old.checked != checked;
  }
}

class Week extends StatelessWidget {
  final bool checked;
  final double width;
  Week({
    @required this.width,
    this.checked = false,
  });

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).data.size.width / WEEKS_IN_YEAR;
    return CustomPaint(
      painter: WeekPainter(checked),
      size: Size.square(width),
    );
  }
}
