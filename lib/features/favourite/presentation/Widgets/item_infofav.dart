import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemInfofav extends StatelessWidget {
  final String title;
  final SvgPicture icon;
  const ItemInfofav({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          title,
          style: getBoldStyle(color: ColorManager.black, fontSize: 8.sp),
        ),
      ],
    );
  }
}
