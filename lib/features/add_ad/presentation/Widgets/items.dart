import 'package:ajrly/core/components/custom_text_filed.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Items extends StatelessWidget {
  final String title;
  final String hint;
  final String svg;
  const Items({super.key, required this.title, required this.hint, required this.svg});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: getSemiBoldStyle(
              color: ColorManager.primary, fontSize: 16.sp),
          textAlign: TextAlign.right,
        ),
        CustomTextFiled(
          hintText: hint,
          borderRadius: BorderRadius.circular(4.r),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              svg,
              height: 24.h,
              width: 24.w,
            ),
          ),
        ),
      ],
    );
  }
}
