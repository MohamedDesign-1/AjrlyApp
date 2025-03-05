import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';

class BookingCard extends StatelessWidget {
  final Color? color;
  final String price;
  final String carName;
  final String car;
  final String? bookingStatus;

  const BookingCard({
    super.key,
    this.color,
    required this.price,
    required this.carName,
    required this.car,
    this.bookingStatus,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go(Routes.BookingInfo);
      },
      child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: ColorManager.lightGrey,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "جنية",
                  style: getSemiBoldStyle(
                      color: ColorManager.primary, fontSize: 12.sp),
                ),
                Text(
                  price,
                  style:
                      getBoldStyle(color: ColorManager.black, fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 20.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      car,
                      style: getBoldStyle(
                          color: ColorManager.primary, fontSize: 12.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    carName,
                    style: getBoldStyle(
                        color: ColorManager.black, fontSize: 16.sp),
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (bookingStatus != null) ...[
                    SizedBox(height: 4.h),
                    Container(
                      height: 20.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: color ?? ColorManager.lightGreen,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        bookingStatus!,
                        style: getBoldStyle(
                            color: ColorManager.black, fontSize: 11.sp),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Image.asset(
                ImageAssets.car,
                height: 100.h,
                width: 100.w,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
