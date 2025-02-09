import 'package:ajrly/core/components/custom_botton.dart';
import 'package:ajrly/core/components/custom_buttomn.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profilebottom extends StatelessWidget {
  Function adminOnTap;
  final bool showAdminButton;
  Profilebottom({required this.adminOnTap , required this.showAdminButton});
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
        Visibility(
          key: Key("admin"),
          visible: showAdminButton,
          child: CustomButton(
              key: Key("admin"),
              title: "لوحة التحكم",
              color: ColorManager.red,
              outlineColor: ColorManager.red,
              onTap: () => adminOnTap(),
              width: double.infinity,
              height: 50,
              radius: 4,
              fontcolor: ColorManager.white,
              showicon: false),
        ),
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
