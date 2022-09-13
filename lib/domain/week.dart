import 'package:life_wasted/util/week.dart';

class WeekData {
  final bool wasted;
  final int yearIndex;
  final int weekIndex;

  WeekData({
    required this.wasted,
    required this.yearIndex,
    required this.weekIndex,
  });
}

typedef YearData = List<WeekData>;
typedef LifeData = List<YearData>;

final LifeData Function(int, int) createLifeData =
    (int totalYears, int weeksSoFar) {
  return List.generate(
    totalYears,
    (year) => List.generate(
      WEEKS_IN_YEAR,
      (index) {
        final wasted =
            (((year + 1) * WEEKS_IN_YEAR) + (index + 1)) <= weeksSoFar;
        return new WeekData(wasted: wasted, yearIndex: year, weekIndex: index);
      },
    ),
  );
};
