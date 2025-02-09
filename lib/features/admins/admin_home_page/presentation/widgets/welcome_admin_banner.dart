import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_mananger.dart';
import '../../../../../core/utils/styles_manager.dart';

class WelcomeAdminBanner extends StatelessWidget {
  const WelcomeAdminBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.lightGrey.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "مرحبا بك في لوحة  \nالتحكم",
              style: getBoldStyle(
                  color: ColorManager.primary, fontSize: 20.sp),
              textDirection: TextDirection.rtl,
            ),
            Image.asset(
              ImageAssets.admin,
              height: 64.h,
              width: 64.w,
            ),
          ],
        ),
      ),
    );
  }
}
