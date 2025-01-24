import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/color_mananger.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  final PageController controller;
  final int count;

  const CustomSmoothPageIndicator({
    super.key,
    required this.controller,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: 88.w,
      height: 24.h,
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.r),
        color: ColorManager.iceWhite.withValues(alpha: 0.5),
      ),
      child: Center(
        child: SmoothPageIndicator(
          controller: controller,
          count: count,
          effect: WormEffect(
            dotHeight: 8.h,
            dotWidth: 8.w,
            spacing: 10.w,
            activeDotColor: ColorManager.white,
            dotColor: ColorManager.iceWhite.withValues(alpha: 0.3),
          ),
        ),
      ),
    );
  }
}
