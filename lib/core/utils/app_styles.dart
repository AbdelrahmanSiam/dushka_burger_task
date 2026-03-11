import 'package:dusks_burger_task/core/utils/responsive.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {

  static TextStyle textStyle13(BuildContext context){
    return TextStyle(
    color: Colors.red,
    fontSize: Responsive.getFont(context, 13),
    fontWeight: FontWeight.bold,
  );
  }
}


