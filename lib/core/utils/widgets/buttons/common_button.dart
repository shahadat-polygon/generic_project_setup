import 'package:flutter/material.dart';
import 'package:generic_project_setup/app/constants/color_constants.dart';
import 'package:generic_project_setup/app/constants/style_constants.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final Color? bgColor;
  final Color? borderColor;
  final Color? titleColor;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final TextStyle? textStyle;

  const CommonButton({
    super.key,
    required this.title,
    this.bgColor,
    this.borderColor,
    this.titleColor,
    required this.onTap,
    this.height,
    this.width,
    this.textStyle,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width?? MediaQuery.of(context).size.width - 48,
        height: height?? 36.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: borderColor?? bgColor?? ColorConstants.primaryColor,),
          color: bgColor?? Colors.transparent,
        ),
        child: Text(title, style: textStyle?? AppTextStyle.w500s16(Colors.white),),
      ),
    );
  }

}