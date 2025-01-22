import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/features/auth/onboarding_screen/widgets/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/components/custom_buttomn.dart';

class CustomOnBoarding extends StatelessWidget {
  final String imageAssets;
  final String maintitle;
  final String subtitle;
  final PageController controller;
  final bool? showSmoothPageIndicator;
  final bool? showbuttomnIndicator;
  final bool? showicon;
  final Function()? onTap;
  final String? buttomntitle;
  final Color? buttomncolor;
  final Color? buttomnoutlineColor;
  final double? buttomnwidth;
  final double? buttomnheight;
  final double? buttomnradius;
  final Color? buttomnfontcolor;
  final String? iconasset;

  const CustomOnBoarding({
    super.key,
    required this.imageAssets,
    required this.maintitle,
    required this.subtitle,
    required this.controller,
    this.showSmoothPageIndicator,
    this.showbuttomnIndicator,
    this.onTap,
    this.buttomntitle,
    this.buttomncolor,
    this.buttomnoutlineColor,
    this.buttomnwidth,
    this.buttomnheight,
    this.buttomnradius,
    this.buttomnfontcolor,
    this.showicon,
    this.iconasset,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageAssets,
          width: 360.w,
          height: 531.w,
          fit: BoxFit.fill,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 360.w,
            height: 319.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: ColorManager.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    maintitle,
                    style: getTextStyle(30, FontWeight.bold, ColorManager.white),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    subtitle,
                    style: getTextStyle(
                        24, FontWeight.normal, ColorManager.white),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(flex: 1,),
                if (showbuttomnIndicator ?? false)
                  CustomButton(
                    showicon:showicon,
                    onTap: onTap ?? () {},
                    title: buttomntitle ?? '',
                    color: buttomncolor ?? ColorManager.white,
                    outlineColor: buttomnoutlineColor ?? ColorManager.primary,
                    width: buttomnwidth ?? 100,
                    height: buttomnheight ?? 50,
                    radius: buttomnradius ?? 0,
                    fontcolor: buttomnfontcolor ?? ColorManager.primary,
                    iconasset: iconasset,
                  ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ),
        if (showSmoothPageIndicator??false)
          Positioned(
            bottom: 15.h,
            left: 140,
            right: 140,
            child: CustomSmoothPageIndicator(
              controller: controller,
              count: 3,
            ),
          ),
      ],
    );
  }}
