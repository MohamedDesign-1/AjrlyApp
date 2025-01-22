import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/assets_manager.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  final Color color;
  final Color? outlineColor;
  final double width;
  final double height;
  final double radius;
  final Color fontcolor;
  final String? iconasset;
  final bool? showicon;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.color,
    required this.outlineColor,
    required this.width,
    required this.height,
    required this.radius,
    required this.fontcolor,
    this.iconasset,
    this.showicon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width.w,
        height: height.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: outlineColor ?? Colors.white,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: getTextStyle(16, FontWeight.bold, fontcolor),
              ),
              if(showicon??false)
              SizedBox(width: 8.w),
              if(showicon??false)
              SvgPicture.asset(
               iconasset??'',
                height: 24.h,
                width: 24.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
