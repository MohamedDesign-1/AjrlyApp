import 'package:ajrly/core/components/custom_buttomn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';

class CheckOutSucessfulScreen extends StatelessWidget {
  const CheckOutSucessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(60.h, 60.w),
        child: AppBar(
          backgroundColor: ColorManager.primary,
          title: Center(
            child: Text(
              'تم الحجز',
              style: getBoldStyle(
                color: ColorManager.iceWhite,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 160.h,
          ),
          Center(
            child: SvgPicture.asset(SvgAssets.doublecheck),
          ),
          Text(
            'تم الحجز بنجاح',
            style: getBoldStyle(color: ColorManager.black, fontSize: 24),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'يمكنك استلام المركبة في الوقت المحدد. إذا كان لديك أي استفسارات، يرجى التواصل مع خدمة العملاء',
              style: getRegularStyle(color: ColorManager.black, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 150.h,
          ),
          CustomButton(
              onTap: () {
                context.go(Routes.mainLayoutRoute);
              },
              title: 'الرئيسة',
              color: ColorManager.primary,
              outlineColor: ColorManager.primary,
              width: 240,
              height: 50,
              radius: 5,
              fontcolor: ColorManager.white),
        ],
      ),
    );
  }
}
