import 'package:ajrly/core/components/custom_botton.dart';
import 'package:ajrly/core/components/custom_buttomn.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profilebottom extends StatelessWidget {
  const Profilebottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      children: [
        CustomButton(
            title: "اعلاناتي",
            color: ColorManager.white,
            outlineColor: ColorManager.primary,
            onTap: () {},
            width: double.infinity,
            height: 50,
            radius: 4,
            fontcolor: ColorManager.primary,
            showicon: false),
        CustomButton(
            title: "لوحة التحكم",
            color: ColorManager.red,
            outlineColor: ColorManager.red,
            onTap: () {},
            width: double.infinity,
            height: 50,
            radius: 4,
            fontcolor: ColorManager.white,
            showicon: false),
        CustomButton(
            title: "تسجيل الخروج",
            color: ColorManager.primary,
            outlineColor: ColorManager.primary,
            onTap: () {},
            width: double.infinity,
            height: 50,
            radius: 4,
            fontcolor: ColorManager.white,
            showicon: false),
      ],
    );
  }
}
