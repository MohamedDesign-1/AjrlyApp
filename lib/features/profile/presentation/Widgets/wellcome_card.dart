import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WellcomeCard extends StatelessWidget {
  const WellcomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorManager.lightgray,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: SizedBox(
        height: 90.h,
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
                        'أحمد محمد أحمد محمود',
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
