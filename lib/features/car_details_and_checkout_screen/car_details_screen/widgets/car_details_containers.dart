import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';

class CarDetailsContainers extends StatelessWidget {
  final String icon;
  final String text;
  const CarDetailsContainers({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74.w,
      height: 74.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorManager.iceWhite),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 12),
            child: SvgPicture.asset(icon),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Text(
              text,
              style: getBoldStyle(color: ColorManager.black, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
