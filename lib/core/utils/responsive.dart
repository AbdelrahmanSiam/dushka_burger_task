import 'package:flutter/material.dart';

class Responsive {
  static const double designWidth = 375;
  static const double designHeight = 812;

  static double getWidth(BuildContext context, double width) {
    double screenWidth = MediaQuery.of(context).size.width;
    return (width / designWidth) * screenWidth;
  }

  static double getHeight(BuildContext context, double height) {
    double screenHeight = MediaQuery.of(context).size.height;
    return (height / designHeight) * screenHeight;
  }

  static double getFont(BuildContext context, double fontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    return (fontSize / designWidth) * screenWidth;
  }
}

/*
Example:
Button width = 200 , design width = 375 , user width = 430
So scale = screen width / design width = 430 / 375
   button width will be = 200 * scale = 229.3 
        Notice button width scale up because Screen width > Design width 
*/