import 'package:ajrly/core/components/custom_password_filed.dart';
import 'package:ajrly/core/components/custom_text_filed.dart';
import 'package:ajrly/core/components/validators.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/routes/routes.dart';
import '../../../../../core/components/custom_buttomn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 223.h,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        backgroundColor: ColorManager.primary,
        title: Center(
          child: Image.asset(
            ImageAssets.logo,
            width: 312.w,
            height: 106.h,
            fit: BoxFit.fill,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 24.h),
                Center(
                  child: Text(
                    'تسجيل الدخول',
                    style: getBoldStyle(color: ColorManager.primary, fontSize: 24.sp),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'يرجى إدخال البيانات التالية لتسجيل الدخول',
                  style: getMediumStyle(color: ColorManager.primary, fontSize: 20.sp),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32.h),
                Text(
                  'البريد الإلكتروني',
                  style: getBoldStyle(color: ColorManager.primary, fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 10.h),
                CustomTextFiled(
                  hintText: '   ادخــل الــبريـد الالــكــتروني',
                  borderRadius: BorderRadius.circular(4),
                  validator: AppValidators.validateEmail,
                ),
                SizedBox(height: 20.h),

                /// Password Input
                Text(
                  'كـــلمة الـــمرور',
                  style: getBoldStyle(color: ColorManager.primary, fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 10.h),
                CustomPasswordFiled(
                  hintText: '   ادخــل كـــلمة الـــمرور',
                  borderRadius: BorderRadius.circular(4),
                  validator: AppValidators.validatePassword,
                ),
                SizedBox(height: 20.h),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Text(
                        'ليس لديك حساب ؟ ',
                        style:
                        getTextStyle(14, FontWeight.w400, ColorManager.black),
                      ),
                      InkWell(
                        onTap: () {
                          context.go(Routes.registerRoute);
                        },
                        child: Text(
                          'انشاء حساب جديد ',
                          style: getTextStyle(
                              14, FontWeight.bold, ColorManager.primary),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                CustomButton(
                  onTap: () {
                    context.go(Routes.mainLayOutRoute);
                  },
                  title: 'تسجيل الدخول',
                  color: ColorManager.primary,
                  outlineColor: ColorManager.white,
                  width: 328.w,
                  height: 48.h,
                  radius: 4,
                  fontcolor: ColorManager.white,
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
