import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_mananger.dart';
import '../../../../../core/utils/styles_manager.dart';

class AdminCardUserOrAd extends StatelessWidget {
  String iconName;
  String sectionName;
  VoidCallback onTap;

  AdminCardUserOrAd({required this.iconName,required this.sectionName , required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 150.h,
        width: 150.w,
        decoration: BoxDecoration(
          color: ColorManager.lightGrey.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          spacing: 16.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconName, height: 64.h, width: 64.w, color: ColorManager.primary,),
            Text(sectionName,style: getBoldStyle(color: ColorManager.black, fontSize: 16.sp),)
          ],
        ),
      ),
    );
  }
}
