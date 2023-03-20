import 'package:flutter/material.dart';
import 'package:generic_project_setup/app/constants/asset_constants.dart';
import 'package:generic_project_setup/app/constants/style_constants.dart';


class CommonEmptyView extends StatelessWidget {
  const CommonEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
            height: 110,
            width: 80,
            margin: const EdgeInsets.only(bottom: 24),
            child: Image.asset(AssetConstants.empty),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Text('運行の予定はありません', style: AppTextStyle.w500s20(),),
          ),
        ],
      ),
    );
  }

}