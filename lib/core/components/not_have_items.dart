import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles_manager.dart';
import '../utils/color_mananger.dart';

class NotHaveItems extends StatelessWidget {
  String message;
  IconData? icon;
  Image? image;
  Color color;
  int size;
  double spacing;
  double? height ;
  double? width ;


  NotHaveItems(
      {super.key,
      required this.message,
      this.icon,
      this.image,
      required this.color,
      required this.size,
      required this.spacing,
      this.height ,
      this.width,
      });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: spacing.h,
        children: [
         Container(
           height: height ?? 100.h,
           width: width ?? 100.w,
           child:  image ??
               Icon(
                 icon,
                 color: ColorManager.primary,
                 size: 100.r,
               ),
          ),
          Text(
            message,
            style: getBoldStyle(color: color, fontSize: size.sp),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
