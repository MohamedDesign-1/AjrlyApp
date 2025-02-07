import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingCard extends StatelessWidget {
  final Color? color;
  final String price;
  final String carName;
  final String car;
  final String? bookingStatus;
  const BookingCard({super.key, this.color, required this.price, required this.carName, required this.car, this.bookingStatus});

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
            padding: const EdgeInsets.only(right: 4, left: 4, top: 8, bottom: 8),
            child: SizedBox(
              height: 100.h,
              width: double.infinity,
              child: Row(
                spacing: 4.w,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "جنية",
                        style: getBoldStyle(color: ColorManager.primary, fontSize: 10.sp),
                      ),
                      Text(
                        price,
                        style: getBoldStyle(color: ColorManager.black, fontSize: 12.sp),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: ColorManager.white,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: SizedBox(
                              height: 20.h,
                              width: 50.w,
                              child: Text(
                                car,
                                style: getBoldStyle(color: ColorManager.primary, fontSize: 12.sp),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Text(
                            carName,
                            style: getBoldStyle(color: ColorManager.black, fontSize: 16.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                        width: 60.w,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: color ?? ColorManager.lightGreen,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Text(
                            bookingStatus ??
                            'تم الحجز',
                            style: getBoldStyle(color: ColorManager.black, fontSize: 11.sp),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),

                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Image(
                      image: AssetImage(ImageAssets.car),
                      height: 120.h,
                      width: 150.w,
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