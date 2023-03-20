import 'package:flutter/material.dart';
import 'dart:math' as math;

class ColorConstants {
  static const Color black100 = Color(0xFFEAECF0);
  static const Color black150 = Color(0xFFD9D9D9);
  static const Color black200 = Color(0xFFA7AAB1);
  static const Color black300 = Color(0xFF868990);
  static const Color black400 = Color(0xFF4D4F55);
  static const Color black500 = Color(0xFF404040);
  static const Color black550 = Color(0xFF333333);
  static const Color black600 = Color(0xFF2F3137);
  static const Color black650 = Color(0xFF1A1A1A);
  static const Color black700 = Color(0xFF121212);
  static const Color black800 = Color(0xFF0F1117);
  static const Color black900 = Color.fromRGBO(26, 26, 26, 1);
  static const Color black50 = Color.fromRGBO(153, 153, 153, 1);
  static const Color black = Color(0xFF000000);

  static const Color green25 = Color(0xFFFBFFF9);
  static const Color green50 = Color(0xFFEFF8F1);
  static const Color green75 = Color(0xFFF4FFF1);
  static const Color green100 = Color(0xFFF5FBF6);
  static const Color green150 = Color(0xFFECF9ED);
  static const Color green200 = Color(0xFFF0FFEC);
  static const Color green300 = Color(0xFF8FE59B);
  static const Color green500 = Color(0xFF39B54A);
  static const Color green600 = Color(0xFF39B54B);
  static const Color green700 = Color(0xFF00A24A);
  static const Color green750 = Color(0xFF0F925B);
  static const Color green800 = Color(0xFF126836);
  static const Color green900 = Color(0xFF1F6127);

  static const Color grey100 = Color(0xFFF4F5F7);
  static const Color grey150 = Color(0xFFCDCDCD);
  static const Color grey200 = Color(0xFFBFBFBF);
  static const Color grey300 = Color(0xFF999999);
  static const Color grey400 = Color(0xFF828282);
  static const Color grey450 = Color(0xFF7B7B7B);
  static const Color grey500 = Color(0xFF606268);
  static const Color grey550 = Color.fromRGBO(83, 90, 115, 1);
  static const Color grey600 = Color(0xFF4A4A4A);
  static const Color grey700 = Color(0xFF2D2D2D);
  static const Color grey800 = Color(0xFF222222);

  static const Color red100 = Color(0xFFF9EDEC);
  static const Color red300 = Color(0xFFFB999D);
  static const Color red400 = Color(0xFFEF655A);
  static const Color red500 = Color(0xFFDC3044);
  static const Color red600 = Color(0xFFBF392B);
  static const Color red700 = Color(0xFFC92236);

  static const Color white700 = Color(0xFFF2F2F2);
  static const Color white800 = Color(0xFFF4F4F4);
  static const Color white = Color(0xFFFFFFFF);

  static const Color silver100 = Color(0xFFCAD6E3);
  static const Color silver200 = Color(0xFFC9CCD2);

  static const Color yellow500 = Color(0xFFEEB50B);
  static const Color yellow600 = Color(0xFFEDA109);

  static const Color blue50 = Color(0xFFEEF6FB);
  static const Color blue400 = Color(0xFF95BEF9);
  static const Color blue800 = Color(0xFF17254D);

  static const Color statePurple = Color(0xFF6B4CF6);
  static const Color stateGreen = Color(0xFF81C585);
  static const Color stateBlue = Color(0xFF578AF8);
  static const Color stateRed = Color(0xFFEF655A);
  static const Color stateDeepBlue = Color(0xFF17254D);

  static const Color primaryColor = Color.fromRGBO(72, 165, 167, 1);
  static const Color primaryColorBackground = Color.fromRGBO(250, 233, 234, 1);
  static const Color primaryColorBorder = Color.fromRGBO(231, 182, 185, 1);
  static const Color borderColor = Color.fromRGBO(244, 244, 244, 1);
  static const Color rewardSummeryBackgroundColor = Color.fromRGBO(251, 248, 237, 1);
  static const Color rewardQRLogoColor = Color.fromRGBO(59, 180, 86, 1);
  static const Color scannerCameraOverLayColor = Color.fromRGBO(255, 255, 255, 0.01);
  static const Color submitCodeConfirmationTextColor = Color.fromRGBO(33, 132, 146, 1);
  static const Color submitCodeConfirmationBackgroundColor = Color.fromRGBO(238, 246, 249, 1);
  static const Color submitCodeConfirmationBorderColor = Color.fromRGBO(33, 193, 243, 1);

  static Color getRandomColor(){
    int randomNumber = math.Random().nextInt(11);
    if(randomNumber == 0){
      return const Color.fromRGBO(189, 51, 167, 1);
    }else if(randomNumber == 1){
      return const Color.fromRGBO(135, 52, 157, 1);
    }else if(randomNumber == 2){
      return const Color.fromRGBO(0, 129, 190, 1);
    }else if(randomNumber == 3){
      return const Color.fromRGBO(59, 174, 231, 1);
    }else if(randomNumber == 4){
      return const Color.fromRGBO(76, 218, 194, 1);
    }else if(randomNumber == 5){
      return const Color.fromRGBO(0, 162, 132, 1);
    }else if(randomNumber == 6){
      return const Color.fromRGBO(0, 178, 87, 1);
    }else if(randomNumber == 7){
      return const Color.fromRGBO(249, 195, 0, 1);
    }else if(randomNumber == 8){
      return const Color.fromRGBO(244, 120, 0, 1);
    }else if(randomNumber == 9){
      return const Color.fromRGBO(207, 40, 30, 1);
    }else {
      return const Color.fromRGBO(189, 51, 167, 1);
    }
  }
}
