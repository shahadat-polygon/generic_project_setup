// import 'package:flutter/material.dart';
// import 'package:ohab_flutter/app/constants/color_constants.dart';
// import 'package:ohab_flutter/app/constants/style_constants.dart';
//
// class CommonStatus extends StatelessWidget {
//   final String title;
//   const CommonStatus({Key? key, required this.title}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     if(title == 'OPERATING') {
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.statePurple,
//         ),
//         child: Text('進行中', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     else if(title == 'BEFORE'){
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.stateBlue,
//         ),
//         child: Text('予定', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     else if(title == 'STOPING'){
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.stateRed,
//         ),
//         child: Text('停車', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     else if(title == 'HEADING'){
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.statePurple,
//         ),
//         child: Text('進行中', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     else if(title == 'PASSED'){
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.stateGreen,
//         ),
//         child: Text('終了', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     else if(title == 'RESERVED'){
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.stateDeepBlue,
//         ),
//         child: Text('予約済', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     else if(title == 'BOADDING'){
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.stateBlue,
//         ),
//         child: Text('搭乗', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     else if(title == 'FINISHED'){
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.stateGreen,
//         ),
//         child: Text('終了', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     else if(title == 'CANCELED'){
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.stateRed,
//         ),
//         child: Text('取消', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     else if(title == 'NOSHOW'){
//       return Container(
//         padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//         decoration: const BoxDecoration(
//           color: ColorConstants.stateRed,
//         ),
//         child: Text('ノーショー', style: AppTextStyle.w400s12(ColorConstants.white),),
//       );
//     }
//     return Container(
//       padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
//       decoration: const BoxDecoration(
//         color: ColorConstants.stateGreen,
//       ),
//       child: Text('終了', style: AppTextStyle.w400s12(ColorConstants.white),),
//     );
//   }
// }
