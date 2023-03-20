import 'package:flutter/material.dart';

import '../../../../app/constants/asset_constants.dart';
import '../../../../app/constants/style_constants.dart';

class CommonSuccessScreen extends StatelessWidget {

  final String? asset;
  final String? title;
  final String? subTitle;
  final Widget? button;

  const CommonSuccessScreen({super.key, this.asset, this.title, this.subTitle, this.button});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(asset?? AssetConstants.successIcon, height: 84, width: 84,fit: BoxFit.cover, ),
          Container(
            margin: const EdgeInsets.only(top: 24, bottom: 16),
            child: Text(title?? 'successful', style: AppTextStyle.w500s20(),),
          ),
          Text(subTitle?? "", style: AppTextStyle.w400s18(),),
          button != null? Container(
            margin: const EdgeInsets.only(top: 24),
            child: button,
          ): const SizedBox.shrink(),
        ],
      ),
    );
  }
  
}