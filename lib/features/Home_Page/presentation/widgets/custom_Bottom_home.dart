import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottonHome extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color color;
  final double width;
  final Image? image;
  final double height;
  final SvgPicture? svg;

  CustomBottonHome( {
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
    required this.width,
    this.image,
    required this.height,
    this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  image != null
                      ? image!
                      : svg!,
                ],
              ),
              Text( text,
                style: getBoldStyle(color: ColorManager.primary, fontSize: 16.sp),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}