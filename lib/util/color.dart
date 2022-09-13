import 'dart:ui';

extension Amend on Color {
  Color amendRed(int Function(int) amend) {
    return this.withRed(amend(this.red));
  }

  Color amendBlue(int Function(int) amend) {
    return this.withBlue(amend(this.blue));
  }

  Color amendGreen(int Function(int) amend) {
    return this.withGreen(amend(this.green));
  }
}
