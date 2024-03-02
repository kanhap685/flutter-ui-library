import 'package:flutter/material.dart';

class ScreenRatioCalculator {
  static double? screenWidth;
  static double? screenHeight;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  static double? getScreenRatioWidth(double? ratio) {
    return screenWidth! * ratio!;
  }

  static double? getScreenRatioHeight(double? ratio) {
    return screenHeight! * ratio!;
  }

  static double getScreenRatioWidthByPercent(double? percent) {
    return screenWidth! * percent! / 100;
  }

  static double getScreenRatioHeightByPercent(double? percent) {
    return screenHeight! * percent! / 100;
  }

  static double? getScreenWidth() {
    return screenHeight;
  }

  static double? getScreenHeight() {
    return screenHeight;
  }
}
