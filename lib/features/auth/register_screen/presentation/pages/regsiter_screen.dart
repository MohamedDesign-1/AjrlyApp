import 'package:ajrly/core/components/custom_buttomn.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../config/routes/routes.dart';
import '../../../../../core/components/custom_password_filed.dart';
import '../../../../../core/components/custom_text_filed.dart';
import '../../../../../core/components/validators.dart';

class RegsiterScreen extends StatelessWidget {
  const RegsiterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'ابدأ رحلتك الآن!',
                  style: getTextStyle(32, FontWeight.bold, ColorManager.primary),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Text(
                    'قم بتسجيل حساب جديد لاستئجار أو مشاركة المركبات بسهولة وأمان',
                    style:
                    getTextStyle(20, FontWeight.normal, ColorManager.primary),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'الاسم بالكامل',
                  style: getSemiBoldStyle(
                      color: ColorManager.primary, fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 16.h),
                CustomTextFiled(
                  hintText: 'ادخل اسمك بالكامل',
                  borderRadius: BorderRadius.circular(4),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      SvgAssets.user2,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  validator: AppValidators.validateName,
                ),
                SizedBox(height: 16.h),
                Text(
                  'البريد الالكتروني',
                  style: getSemiBoldStyle(
                      color: ColorManager.primary, fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 16.h),
                CustomTextFiled(
                  hintText: 'ادخل البريد الالكتروني',
                  borderRadius: BorderRadius.circular(4),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      SvgAssets.email,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  validator: AppValidators.validateEmail,
                ),
                SizedBox(height: 16.h),
                Text(
                  'رقم الموبيل',
                  style: getSemiBoldStyle(
                      color: ColorManager.primary, fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 16.h),
                CustomTextFiled(
                  hintText: 'ادخل رقم الموبيل',
                  borderRadius: BorderRadius.circular(4),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      SvgAssets.phone,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  validator: AppValidators.validatePhoneNumber,
                ),
                SizedBox(height: 16.h),
                Text(
                  'رقم البطاقة',
                  style: getSemiBoldStyle(
                      color: ColorManager.primary, fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 16.h),
                CustomTextFiled(
                  hintText: 'ادخل الرقم القومي المكون من 14 رقم',
                  borderRadius: BorderRadius.circular(4),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      SvgAssets.driverLisence,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  validator: AppValidators.validateNationalID,
                ),
                SizedBox(height: 16.h),
                Text(
                  'تاريخ الميلاد',
                  style: getSemiBoldStyle(
                      color: ColorManager.primary, fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 16.h),
                CustomTextFiled(
                  hintText: 'ادخل تاريخ ميلادك',
                  borderRadius: BorderRadius.circular(4),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      SvgAssets.calender,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  validator: AppValidators.validateDateOfBirth,
                ),
                SizedBox(height: 16.h),
                Text(
                  'كلمة المرور',
                  style: getSemiBoldStyle(
                      color: ColorManager.primary, fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 16.h),
                CustomPasswordFiled(
                  hintText: 'ادخل كلمة المرور',
                  borderRadius: BorderRadius.circular(4),
                  validator: AppValidators.validatePassword,
                ),
                SizedBox(height: 16.h),
                Text(
                  'تأكيد كلمة المرور',
                  style: getSemiBoldStyle(
                      color: ColorManager.primary, fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 16.h),
                CustomPasswordFiled(
                  hintText: 'تأكيد كلمة المرور',
                  borderRadius: BorderRadius.circular(4),
                  validator: AppValidators.validatePassword,
                ),
                SizedBox(height: 16.h),
                  CustomButton(
                      onTap: () {
                        context.go(Routes.mainLayoutRoute);
                      },
                      title: 'تسجيل حساب جديد',
                      color: ColorManager.primary,
                      outlineColor: ColorManager.white,
                      width: double.infinity,
                      height: 48.h,
                      radius: 4,
                      fontcolor: ColorManager.white
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
