import 'package:dusks_burger_task/core/utils/responsive.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {

  static TextStyle textStyleBold13(BuildContext context){
    return TextStyle(
    color: Colors.red,
    fontSize: Responsive.getFont(context, 13),
    fontWeight: FontWeight.bold,
  );
  }
  static TextStyle textStyleSemiBold15(BuildContext context){
    return TextStyle(
    fontSize: Responsive.getFont(context, 15),
    fontWeight: FontWeight.w600,
  );
  }
  static TextStyle textStyleMedium13(BuildContext context){
    return TextStyle(
    fontSize: Responsive.getFont(context, 13),
    fontWeight: FontWeight.w500,
  );
  }
}


