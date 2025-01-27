import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdNewCard extends StatelessWidget {
  const AdNewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorManager.lightgray,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: 150.h,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Column(
              children: [
                Container(
                  height: 150.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Image.asset(
                    ImageAssets.car2,
                  ),
                ),
                Container(
                  height: 100.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "يوم/",
                                  style: getRegularStyle(
                                      color: ColorManager.black,
                                      fontSize: 12.sp),
                                ),
                                Text(
                                  "500",
                                  style: getBoldStyle(
                                      color: ColorManager.primary,
                                      fontSize: 16.sp),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: ColorManager.white,
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                  child: Container(
                                    height: 22.h,
                                    width: 50.w,
                                    child: Text(
                                      "سيدان",
                                      style: getBoldStyle(
                                          color: ColorManager.primary,
                                          fontSize: 12.sp),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "نيسان صنى للاجار",
                                  style: getBoldStyle(
                                      color: ColorManager.black,
                                      fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "اوتوماتيك",
                                  style: getSemiBoldStyle(
                                      color: ColorManager.black, fontSize: 12.sp),
                                ),
                                SizedBox(width: 4.w),
                                SvgPicture.asset(
                                  SvgAssets.Gearbox,
                                  height: 16.h,
                                  color: ColorManager.primary,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "بنزين",
                                  style: getSemiBoldStyle(
                                      color: ColorManager.black, fontSize: 12.sp),
                                ),
                                SizedBox(width: 4.w),
                                SvgPicture.asset(
                                  SvgAssets.Engine,
                                  height: 16.h,
                                  color: ColorManager.primary,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "راكب" + "4 " ,
                                  style: getSemiBoldStyle(
                                      color: ColorManager.black, fontSize: 12.sp),
                                ),
                                SizedBox(width: 4.w),
                                SvgPicture.asset(
                                  SvgAssets.user,
                                  height: 16.h,
                                  color: ColorManager.primary,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
