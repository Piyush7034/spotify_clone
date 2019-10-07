import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData mediaQueryData;
  static double screenHeight;
  static double screenWidth;
  static double safeAreaHeight;
  static double safeHeight;

  void getDimensions(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenHeight = mediaQueryData.size.height;
    screenWidth = mediaQueryData.size.width;
    safeAreaHeight = mediaQueryData.padding.top + mediaQueryData.padding.bottom;
    safeHeight = screenHeight - safeAreaHeight;
  }
}
