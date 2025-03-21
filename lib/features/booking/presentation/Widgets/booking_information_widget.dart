import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/core/components/item_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingInfo_card extends StatelessWidget {
  final Color? color;
  final String carName;
  final String car;
  final String? bookingStatus;
  final String seats;
  final String gear;
  final String engine;

  BookingInfo_card({
    Key? key,
    this.color,
    required this.carName,
    required this.car,
    this.bookingStatus,
    required this.seats,
    required this.gear,
    required this.engine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: ColorManager.lightGrey,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: SizedBox(
              height: 100.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4.w,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(ImageAssets.Heart),
                              color: ColorManager.transparent,
                              height: 20.h,
                              width: 20.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              spacing: 4.h,
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: ColorManager.white,
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 4.h),
                                    child: Text(
                                      car,
                                      style: getBoldStyle(
                                          color: ColorManager.primary,
                                          fontSize: 12.sp),
                                    ),
                                  ),
                                ),
                                Text(
                                  carName,
                                  style: getBoldStyle(
                                      color: ColorManager.black,
                                      fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ItemInfofav(
                                title: gear,
                                icon: SvgPicture.asset(SvgAssets.gearBox),
                              ),
                              ItemInfofav(
                                title: engine,
                                icon: SvgPicture.asset(SvgAssets.engine),
                              ),
                              ItemInfofav(
                                title: seats,
                                icon: SvgPicture.asset(SvgAssets.userfav),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Image(
                      image: AssetImage(ImageAssets.car),
                      height: 110.h,
                      width: 150.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
