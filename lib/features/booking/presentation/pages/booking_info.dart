import 'package:ajrly/core/components/custom_botton.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/features/booking/presentation/Widgets/booking_details.dart';
import 'package:ajrly/features/booking/presentation/Widgets/booking_information_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/components/custom_all_screens_appbar.dart';
import '../../../../core/utils/color_mananger.dart';
import '../Manager/booking_cubit.dart';

class BookingInfo extends StatelessWidget {
  const BookingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final extra = GoRouterState.of(context).extra as Map<String, dynamic>?;
    print(extra);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: CustomAppbarAllScreens(title: 'تفاصيل الحجز'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocBuilder<BookingCubit, BookingState>(
          builder: (context, state) {
            if (state is BookingLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is BookingDetailsSuccess) {
              final booking = state.bookingDetails;
              final advertisement = booking.advertisement;
              if (advertisement == null) {
                return Center(
                  child: Text(
                    "لا توجد بيانات إعلان متاحة",
                    style: getBoldStyle(color: ColorManager.red, fontSize: 18),
                  ),
                );
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      BookingInfo_card(
                        carName: extra?['carName'] ?? "غير متوفر",
                        car: extra?['carName'] ?? "غير متوفر",
                        seats: extra?['carName'] != null
                            ? "${advertisement.numberOfSeats} راكب"
                            : "غير متوفر",
                        gear: extra?['carName'] ?? "غير متوفر",
                        engine: extra?['carName'] ?? "غير متوفر",
                      ),
                      SizedBox(height: 16.h),
                      const BookingDetails(),
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
                                "${extra?['carName'] ?? "غير متوفر"}",
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
                                              color: ColorManager.red,
                                              fontSize: 24),
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
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                      SizedBox(height: 6.h),
                    ],
                  ),
                ],
              );
            } else if (state is BookingError) {
              return Center(
                child: Text(
                  "حدث خطأ: ${state.failure.errorMessage}",
                  style: getBoldStyle(color: ColorManager.red, fontSize: 18),
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
