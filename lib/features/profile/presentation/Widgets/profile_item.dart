import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileItem extends StatelessWidget {
  final String text;
  final String tittle;
  final Image icon;

  const ProfileItem(
      {super.key, required this.text, required this.tittle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 8.h,
      children: [
        Text(
          tittle,
          style: getMediumStyle(color: ColorManager.primary, fontSize: 16.sp),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: ColorManager.lightgray,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 8.w,
                children: [
                  Text(
                    text,
                    style: getMediumStyle(
                        color: ColorManager.black, fontSize: 14.sp),
                  ),
                  SizedBox(height: 40.h, width: 40.w,child: icon ,),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
