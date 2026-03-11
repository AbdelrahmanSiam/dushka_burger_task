import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle textStyle13 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 13),
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
}


double getResponsiveFontSize({required double fontSize}) {
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return fontSize.clamp(lowerLimit, upperLimit);
}