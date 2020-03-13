const WEEKS_IN_YEAR = 52;

extension InWeeks on Duration {
  int get inWeeks {
    return (this.inDays / 7).floor();
  }
}
