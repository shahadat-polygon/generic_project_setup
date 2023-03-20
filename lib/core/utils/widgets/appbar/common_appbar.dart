import 'package:flutter/material.dart';
import 'package:generic_project_setup/app/constants/color_constants.dart';
import 'package:generic_project_setup/app/constants/style_constants.dart';
import 'package:generic_project_setup/core/navigation/route_paths.dart';
import 'package:generic_project_setup/core/navigation/services/navigation_service.dart';


class CommonAppBar {
  static PreferredSizeWidget appBar(String title) {
    return AppBar(
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: (){
          NavigationService.goBack();
        },
        child: const Icon(
          Icons.arrow_back,
          size: 26,
          color: ColorConstants.black400,
        ),
      ),
      title: Text(
        title,
        style: AppTextStyle.w400s14(ColorConstants.black600),
      ),
      actions: [
        GestureDetector(
          onTap: (){
            NavigationService.navigateTo(RoutePaths.landingScreen);
          },
          child: Container(
            margin: const EdgeInsets.only(right: 16),
            child: const Icon(
              Icons.home,
              size: 26,
              color: ColorConstants.primaryColor,
            ),
          ),
        ),
      ],
      centerTitle: true,
      elevation: 2,
      backgroundColor: ColorConstants.white,
    );
  }

  static PreferredSizeWidget homeAppBar(String title) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyle.w500s20(const Color.fromRGBO(26, 85, 86, 1)),
      ),
      toolbarHeight: 80,
      leadingWidth: 40 + 24,
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: (){
          NavigationService.navigateTo(RoutePaths.profile);
        },
        child: Container(
          margin: const EdgeInsets.only(left: 24, top: 20, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container() /*BlocBuilder<ProfileBloc, ProfileState>(
              builder: (BuildContext context, ProfileState state){
                if(state.status?.isSuccess == true){
                  return Image.network(
                    state.response?.image?? "",
                    height: 40, width: 40,
                    fit: BoxFit.cover,
                  );
                } else {
                  return Image.network(
                    'https://images.statusfacebook.com/profile_pictures/boys-dp/boys-dp-03.jpg',
                    height: 40, width: 40,
                    fit: BoxFit.cover,
                  );
                }
              },
            ),*/
          ),
        ),
      ),
      // actions: [
      //   GestureDetector(
      //     onTap: (){
      //       NavigationService.navigateTo(RoutePaths.notification);
      //     },
      //     child: Container(
      //       margin: const EdgeInsets.only(right: 16),
      //       child: const Icon(
      //         Icons.notifications,
      //         size: 26,
      //         color: ColorConstants.primaryColor,
      //       ),
      //     ),
      //   ),
      // ],
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorConstants.white,
    );
  }
}