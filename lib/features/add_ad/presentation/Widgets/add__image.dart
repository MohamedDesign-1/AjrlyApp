import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddImage extends StatelessWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: ColorManager.lightGrey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: SizedBox(
                height: 200.h,
                width: double.infinity,
                child: Center(
                  child: Image.asset(ImageAssets.EnterImage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}