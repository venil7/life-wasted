const WEEKS_IN_YEAR = 52;
const DAYS_IN_YEAR = 365.25;
const DAYS_IN_WEEK = 7;
const THRESHOLD = 13;

extension InWeeks on Duration {
  int get inWeeks {
    return (this.inDays / DAYS_IN_WEEK).floor();
  }

  double get inYears {
    return this.inDays / DAYS_IN_YEAR;
  }
}

extension ToDuration on int {
  Duration get toYearsDuration {
    return Duration(days: this * 365);
  }

  Duration get toDaysDuraion {
    return Duration(days: this);
  }

  double percentOf(int total) {
    return this / (total / 100);
  }

  int get yearsInWeeks {
    return ((this * 365) / 7).round();
  }
}

extension Fractional on double {
  double fractional() {
    return this - (this.floor());
  }

  double get yearToWeeks {
    return WEEKS_IN_YEAR * this;
  }

  int get yearsInWeeks {
    return ((this * 365) / 7).round();
  }
}
