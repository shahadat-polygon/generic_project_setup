//generalize widget to be used in any screen

import 'package:flutter/material.dart';
import 'color_constants.dart';

class AppFontSize {
  static double get tooSmallTextSize => 10;
  static double get smallTextSize => 12;
  static double get mediumTextSize => 14;
  static double get largeTextSize => 16;
  static double get appBarTextSize => 18;
  static double get semiLargeTextSize => 20;
  static double get extraLargeTextSize => 24;
}

class AppTextStyle {

  static TextStyle get appBarTextStyle => TextStyle(
      fontWeight: FontWeight.w600, fontSize: AppFontSize.appBarTextSize);

  static TextStyle w400s14([Color? color]){
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w500s14([Color? color]){
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w600s14([Color? color]){
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w700s14([Color? color]){
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w800s14([Color? color]){
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w800,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w400s16([Color? color]){
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w500s16([Color? color]){
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w600s16([Color? color]){
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w700s16([Color? color]){
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w800s16([Color? color]){
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w500s20([Color? color]){
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w800,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w400s12([Color? color]){
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w400s18([Color? color]){
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w600s12([Color? color]){
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: color?? ColorConstants.black600,
    );
  }

  static TextStyle w800s40([Color? color]){
    return TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w800,
      color: color?? ColorConstants.black600,
    );
  }
}
