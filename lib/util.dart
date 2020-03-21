const WEEKS_IN_YEAR = 52;
const DAYS_IN_YEAR = 365.25;
const DAYS_IN_WEEK = 7;

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
}

extension Fractional on double {
  double fractional() {
    return this - (this.floor());
  }

  double get yearToWeeks {
    return WEEKS_IN_YEAR * this;
  }
}
