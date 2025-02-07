import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/features/booking/presentation/Widgets/booking__card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingItemsList extends StatelessWidget {
  const BookingItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    int itemcount = 10; // Define itemcount here
    return ListView.builder(
      itemCount: itemcount, // Use itemcount here
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            spacing: 16.h,
            children: [
              BookingCard(
                price: '5000',
                carName: 'نيسان صني للاجار',
                car: 'سيدان',
                bookingStatus: 'مؤكدة',
                color: ColorManager.lightGreen,
              ),
              BookingCard(
                price: '5000',
                carName: 'نيسان صني للاجار',
                car: 'سيدان',
                bookingStatus: 'تم الالغاء',
                color: ColorManager.lightRed,
              ),
            ],
          ),
        );
      },
    );
  }
}