import 'package:flutter/material.dart';

import '../../../../app/constants/color_constants.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        color: Colors.transparent,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            ColorConstants.primaryColor,
          ),
        ),
      ),
    );
  }
}