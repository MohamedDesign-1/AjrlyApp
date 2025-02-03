import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeCard extends StatelessWidget {
  String wlcUserName;
  WelcomeCard({super.key , required this.wlcUserName});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorManager.lightgray,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: SizedBox(
        height: 95.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'مـــرحــبـــا بـــك',
                        style: getBoldStyle(color: ColorManager.black, fontSize: 24.sp),
                      ),
                      Text(
                        wlcUserName,
                        style: getBoldStyle(color: ColorManager.primary, fontSize: 22.sp),
                      ),
                    ],
                  ),
                  SizedBox(width: 8.w),
                  Image.asset(IconAssets.Group , height: 75.h),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
