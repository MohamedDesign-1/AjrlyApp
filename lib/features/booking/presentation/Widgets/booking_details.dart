import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/color_mananger.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 16.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Info(
              tittle: "بداية الوقت",
              text: "84848",
              icon: SvgPicture.asset(SvgAssets.clock),
            ),
            Info(
              tittle: "تاريخ بداية الحجز",
              text: "84848",
              icon: SvgPicture.asset(SvgAssets.time),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Info(
              tittle: "نهاية الوقت",
              text: "84848",
              icon: SvgPicture.asset(SvgAssets.clock),
            ),
            Info(
              tittle: "تاريخ نهاية الحجز",
              text: "84848",
              icon: SvgPicture.asset(SvgAssets.time),
            ),
          ],
        ),
        Text(
          "مكان الاستلام",
          style: getBoldStyle(color: ColorManager.black, fontSize: 20.sp),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: ColorManager.lightGrey,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: SizedBox(
            width: double.infinity,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 8.w,
                children: [
                  Text(
                    " اي حنة المهم هتتدفع؟",
                    style: getMediumStyle(
                        color: ColorManager.black, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 24.h,
                    width: 24.w,
                    child: SvgPicture.asset(SvgAssets.locate),
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

class Info extends StatelessWidget {
  final String tittle;
  final String text;
  final SvgPicture icon;
  const Info(
      {super.key,
      required this.tittle,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorManager.lightGrey,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: SizedBox(
        height: 90.h,
        width: 160.w,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 8.w,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    tittle,
                    style: getBoldStyle(
                        color: ColorManager.black, fontSize: 12.sp),
                  ),
                  Text(
                    text,
                    style: getBoldStyle(
                        color: ColorManager.black, fontSize: 12.sp),
                  ),
                ],
              ),
              SizedBox(height: 34.h, width: 34.w, child: icon),
            ],
          ),
        ),
      ),
    );
  }
}
