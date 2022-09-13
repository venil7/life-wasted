import 'package:flutter/material.dart';
import 'package:life_wasted/domain/week.dart';
import 'package:life_wasted/util/color.dart';

class Week extends StatelessWidget {
  // final bool checked;
  final WeekData weekData;
  final double width;

  Week({
    required this.width,
    required this.weekData,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WeekPainter(weekData),
      size: Size.square(width),
    );
  }
}

const WASTED_COLOR = Colors.orangeAccent;
const REMAINS_COLOR = Colors.lightGreen;

class WeekPainter extends CustomPainter {
  final WeekData weekData;

  WeekPainter(this.weekData);

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final center = Offset(width / 2, width / 2);
    final paint = Paint();
    paint.color = weekData.wasted
        ? WASTED_COLOR
            .amendGreen((r) => r - weekData.yearIndex * 2)
            .amendBlue((b) => b + weekData.weekIndex * 3)
        : REMAINS_COLOR
            .amendRed((r) => r - weekData.yearIndex * 1)
            .amendBlue((b) => b + weekData.yearIndex + weekData.weekIndex * 2);
    canvas.drawCircle(center, width / 2 - 1, paint);
  }

  @override
  bool shouldRepaint(WeekPainter old) {
    return old.weekData.wasted != weekData.wasted;
  }
}
