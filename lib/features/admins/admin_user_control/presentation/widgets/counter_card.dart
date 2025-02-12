import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/color_mananger.dart';
import '../../../../../core/utils/styles_manager.dart';

class CounterCard extends StatelessWidget {
  String sectionName ;
  String sectionNum ;
  String sectionIcon ;
  CounterCard({required this.sectionIcon , required this.sectionName , required this.sectionNum});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 80.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: ColorManager.lightgray.withValues(alpha: 0.8),
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8.h,
        children: [
          SvgPicture.asset(sectionIcon , height: 24.h, width: 24.w,),
          Text(sectionName,
            style: getBoldStyle(
                color: ColorManager.gray, fontSize: 11.sp ) , textAlign: TextAlign.center,),
          Text(sectionNum,
              style: getBoldStyle(
                  color: ColorManager.primary, fontSize: 12.sp)),
        ],
      ),
    );

  }
}
