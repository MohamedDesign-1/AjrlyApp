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
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: 150.h,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 150.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    ImageAssets.car2,
                  ),
                ),
                Container(
                  height: 100.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
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
                                    borderRadius: BorderRadius.circular(16),
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
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                SvgAssets.Gearbox,
                                height: 16.h,
                                color: ColorManager.primary,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                "اوتوماتيك",
                                style: getRegularStyle(
                                    color: ColorManager.black, fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                SvgAssets.Engine,
                                height: 16.h,
                                color: ColorManager.primary,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                "بنزين",
                                style: getRegularStyle(
                                    color: ColorManager.black, fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                SvgAssets.user,
                                height: 16.h,
                                color: ColorManager.primary,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                "راكب"+ "4 " ,
                                style: getRegularStyle(
                                    color: ColorManager.black, fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
