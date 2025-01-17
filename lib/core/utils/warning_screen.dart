import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../components/custom_all_screens_appbar.dart';
import 'color_mananger.dart';
import 'styles_manager.dart';

class WarningScreen extends StatelessWidget {
  String appBarTitle;
  String text;
  String lottieLink;
  WarningScreen(
      {super.key,
      required this.appBarTitle,
      required this.text,
      required this.lottieLink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.h),
          child: CustomAppbarAllScreens(title: appBarTitle)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LottieBuilder.asset(lottieLink, height: 250.h, width: 250.w),
              Text(
                text,
                textAlign: TextAlign.center,
                style:
                    getBoldStyle(color: ColorManager.primary, fontSize: 18.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
