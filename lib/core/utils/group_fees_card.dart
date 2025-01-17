import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_mananger.dart';
import 'styles_manager.dart';

class GroupFeesCard extends StatelessWidget {
  String inputTitle;
  String outputTitle;

  GroupFeesCard(
      {required this.inputTitle, required this.outputTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          inputTitle,
          style: getBoldStyle(color: ColorManager.primary, fontSize: 16.sp),
        ),
        SizedBox(height: 16.0.h),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: ColorManager.gray.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              outputTitle,
              style:
                  getMediumStyle(color: ColorManager.primary, fontSize: 14.sp),
            ),
          ),
        ),
        SizedBox(height: 16.0.h),
      ],
    );
  }
}
