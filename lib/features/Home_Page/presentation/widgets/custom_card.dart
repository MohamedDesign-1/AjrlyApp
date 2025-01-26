import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final height;
  final width;

  CustomCard({Key? key, required this.color, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: height ?? 140,
            width: width ?? double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(ImageAssets.car, fit: BoxFit.cover, height: 110.h),
              Text(
                "عــــــــروض \n بـــــدايــــــــة \n الســــنـــــة",
                style: getBoldStyle(color: ColorManager.white, fontSize: 24.sp),
                textAlign: TextAlign.end,
              ),
            ],
          )
        ],
      ),
    );
  }
}
