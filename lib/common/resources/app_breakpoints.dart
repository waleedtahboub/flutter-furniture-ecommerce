abstract class AppBreakpoints {
  static const double mobile = 600;
  static const double tablet = 900;
  static const double desktop = 1200;

  static double titleFontSize(double width) {
    if (width >= desktop) return 16;
    if (width >= tablet) return 14;
    return 12.0;
  }
}
