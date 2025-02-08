import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favouritecard extends StatelessWidget {
  final Color? color;
  final String price;
  final String carName;
  final String car;
  final String? bookingStatus;

  Favouritecard({
    Key? key,
    this.color,
    required this.price,
    required this.carName,
    required this.car,
    this.bookingStatus,
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
              height: 110.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(ImageAssets.Heart),
                              height: 20.h,
                              width: 20.w,
                            ),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: ColorManager.white,
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                                child: Text(
                                  car,
                                  style: getBoldStyle(color: ColorManager.primary, fontSize: 12.sp),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Text(
                          carName,
                          style: getBoldStyle(color: ColorManager.black, fontSize: 16.sp),
                        ),

                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: color ?? ColorManager.lightGreen,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                            child: Text(
                              bookingStatus ?? 'تم الحجز',
                              style: getBoldStyle(color: ColorManager.black, fontSize: 11.sp),
                              textAlign: TextAlign.center,
                            ),
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
                      height: 100.h,
                      width: 140.w,
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
