import 'package:flutter/material.dart';

class Constant {
  static String appTitle = 'Zakher';
  static String appDescription = 'Zakher';
  static double? _width, _height;
  static double getWidth(BuildContext context) {
    return _width ??= MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return _height ??= MediaQuery.of(context).size.height;
  }

  static Color backgroundColor = Color(0xFFf2faff);
  static Color primaryColor = Color(0xFF8b8b8b);
  static Color secondaryColor = Color(0XFF036268);
  static Color textWhite = Colors.white;
  static Color textBlack = Colors.black;
  static Color textGreenColor = Color(0XFF036268);
  static Color redColorApp = Color(0XFFfb9288);
  static Color greyLite = Color(0XFFf9f9f9);

  static Color textSecondaryColor = Color(0xFF8e9093);
}
