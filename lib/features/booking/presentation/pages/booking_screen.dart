import 'package:ajrly/core/components/custom_appbar.dart';
import 'package:ajrly/features/booking/presentation/Widgets/booking_items_list.dart';
import 'package:ajrly/core/components/not_have_items.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: CustomAppbar(title: 'الحجوزات'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(12),
        child: BookingItemsList(),
      ),



      // NotHaveItems(
      //   message: "مفيش حجوزات عندك \n دلوقتي",
      //   image: Image.asset(ImageAssets.No_Tasks),
      //   color: ColorManager.black,
      //   size: 24, spacing: 14,
      // ),



    );
  }
}
