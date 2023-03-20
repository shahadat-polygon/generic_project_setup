import 'package:flutter/material.dart';

class SuccessScreenArguments {

  final String screenTitle;
  final String topButtonText;
  final String bottomButtonText;
  final String shortDescription;
  final String longDescription;
  final VoidCallback topButtonTapped;
  final VoidCallback bottomButtonTapped;

  SuccessScreenArguments({required this.screenTitle,
    required this.topButtonText,
    required this.bottomButtonText,
    required this.topButtonTapped,
    required this.bottomButtonTapped,
    required this.shortDescription,
    required this.longDescription,
  });
}

class FailureScreenArguments {

  final String screenTitle;
  final String topButtonText;
  final String bottomButtonText;
  final String shortDescription;
  final String longDescription;
  final VoidCallback topButtonTapped;
  final VoidCallback bottomButtonTapped;

  FailureScreenArguments({
    required this.screenTitle,
    required this.topButtonText,
    required this.bottomButtonText,
    required this.topButtonTapped,
    required this.bottomButtonTapped,
    required this.shortDescription,
    required this.longDescription,
  });
}

class LandingViewArguments {

  final int selectedIndex;

  LandingViewArguments({required this.selectedIndex});
}

class OTPArguments {
  String title;
  Function() navigateTo;
  bool? isRegistration;
  bool? isAssist;
  OTPArguments({required this.title, required this.navigateTo, this.isRegistration, this.isAssist});
}

class TimelineDetailsArguments {
  Color color;
  String type;

  TimelineDetailsArguments({required this.color, required this.type});
}
