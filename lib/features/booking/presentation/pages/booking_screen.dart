import 'package:ajrly/core/components/custom_appbar.dart';
import 'package:ajrly/features/booking/presentation/Manager/booking_cubit.dart';
import 'package:ajrly/features/booking/presentation/Widgets/booking_items_list.dart';
import 'package:ajrly/core/components/not_have_items.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/di/di.dart';
import '../Widgets/booking__card.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BookingCubit>()..fetchBookingAds(),
      child: BlocConsumer<BookingCubit, BookingState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is BookingLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is BookingError) {
            return Center(
              child: Text(
                "حدث خطأ: ${state.failure.errorMessage}",
                style: TextStyle(color: Colors.red),
              ),
            );
          }

          if (state is BookingSuccess) {
            final bookings = state.bookings.data;

            if (bookings == null || bookings.isEmpty) {
              return NotHaveItems(
                message: "مفيش حجوزات عندك \n دلوقتي",
                image: Image.asset(ImageAssets.No_Tasks),
                color: ColorManager.black,
                size: 24,
                spacing: 14,
              );
            }

            return Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(90.h),
                child: CustomAppbar(title: 'الحجوزات'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(12),
                child: ListView.builder(
                  itemCount: bookings.length,
                  itemBuilder: (context, index) {
                    final booking = bookings[index];
                    return Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: BookingCard(
                        price: booking.advertisement!.price.toString(),
                        carName: booking.advertisement!.title ?? "",
                        car: booking.advertisement?.vehicleCategory ?? "",
                        bookingStatus: "تم الحجز",
                        color: booking.advertisement?.vehicleType == "مؤكدة"
                            ? ColorManager.lightGreen
                            : ColorManager.lightRed,

                      ),
                    );
                  },
                ),
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
