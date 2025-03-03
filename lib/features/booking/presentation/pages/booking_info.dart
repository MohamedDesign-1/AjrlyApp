import 'package:ajrly/core/components/custom_botton.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/features/booking/presentation/Widgets/booking_details.dart';
import 'package:ajrly/features/booking/presentation/Widgets/booking_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/components/custom_all_screens_appbar.dart';
import '../../../../core/utils/color_mananger.dart';

class BookingInfo extends StatelessWidget {
  const BookingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: CustomAppbarAllScreens(title: 'تفاصيل الحجز'),
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
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "تاكيد الغاء الحجز",
                                    style: getBoldStyle(
                                        color: ColorManager.red, fontSize: 24),
                                  ),
                                  Text(
                                    "هل انت متاكد انك تريد الغاء هذا الحجز؟",
                                    style: getBoldStyle(
                                        color: ColorManager.black,
                                        fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "قد يتم فرض 20% رسوم الغاء وفقا لسياساتنا",
                                    style: getBoldStyle(
                                        color: ColorManager.black,
                                        fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          context.go(Routes.mainLayoutRoute);
                                        },
                                        child: Text(
                                          "الغاء الحجز",
                                          style: getBoldStyle(
                                              color: ColorManager.red,
                                              fontSize: 20),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          context.go(Routes.BookingInfo);
                                        },
                                        child: Text(
                                          "احتفظ بالحجز",
                                          style: getBoldStyle(
                                              color: ColorManager.green,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
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
