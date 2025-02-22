import 'package:ajrly/core/components/custom_botton.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/features/booking/presentation/Widgets/booking_details.dart';
import 'package:ajrly/features/booking/presentation/Widgets/booking_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/utils/color_mananger.dart';

class BookingInfo extends StatelessWidget {
  const BookingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.square(90),
        child: AppBar(
          backgroundColor: ColorManager.primary,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  context.go(Routes.mainLayoutRoute);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: ColorManager.white,
                ),
              ),
              Text(
                'تفاصيل الحجز',
                style: getBoldStyle(color: ColorManager.white, fontSize: 16.sp),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BookingInfo_card(
                  carName: 'نيسان صني',
                  car: 'سيدان',
                  seats: '4-راكب',
                  gear: 'Auto',
                  engine: 'بنزين',
                ),
                SizedBox(height: 16.h),
                BookingDetails(),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "السعر الكامل",
                          style: getBoldStyle(
                              color: ColorManager.black, fontSize: 16),
                        ),
                        Text(
                          "5000",
                          style: getBoldStyle(
                              color: ColorManager.primary, fontSize: 16),
                        ),
                        Text(
                          "جـــنـــيـــة",
                          style: getBoldStyle(
                              color: ColorManager.primary, fontSize: 16),
                        ),
                      ],
                    ),
                    CustomBotton(
                      text: "إلغاء الحجز",
                      color: ColorManager.red,
                      onTap: () {},
                      width: 250.w,
                    ),
                  ],
                ),
                SizedBox(height: 6.h)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
