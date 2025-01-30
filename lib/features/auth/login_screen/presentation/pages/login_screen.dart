import 'package:ajrly/core/components/custom_password_filed.dart';
import 'package:ajrly/core/components/custom_text_filed.dart';
import 'package:ajrly/core/components/validators.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/core/utils/toast_utils.dart';
import 'package:ajrly/features/auth/login_screen/presentation/manager/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/di/di.dart';
import '../../../../../config/routes/routes.dart';
import '../../../../../core/components/custom_buttomn.dart';

class LoginScreen extends StatelessWidget {
  final LoginCubit loginCubit = getIt<LoginCubit>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      bloc: loginCubit,
      listener: (context, state) {
        if (state is LoginSuccessState) {
          ToastUtils.showSuccessToast(context,
              state.loginResponseEntity.message ?? "", 'تم تسجيل الدخول بنجاح');
          context.go(Routes.mainLayoutRoute);
        } else if (state is LoginErrorState) {
          ToastUtils.showErrorToast(
              context, state.failure.errorMessage, 'خطأ ما حدث');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 223.h,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16.r),
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
              key: loginCubit.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 24.h),
                  Center(
                    child: Text(
                      'تسجيل الدخول',
                      style: getBoldStyle(
                          color: ColorManager.primary, fontSize: 24.sp),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'يرجى إدخال البيانات التالية لتسجيل الدخول',
                    style: getMediumStyle(
                        color: ColorManager.primary, fontSize: 20.sp),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32.h),
                  Text(
                    'البريد الإلكتروني',
                    style: getSemiBoldStyle(
                        color: ColorManager.primary, fontSize: 16.sp),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFiled(
                    controller: loginCubit.emailController,
                    hintText: '   ادخــل الــبريـد الالــكــتروني',
                    borderRadius: BorderRadius.circular(4.r),
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
                  SizedBox(height: 24.h),

                  /// Password Input
                  Text(
                    'كلمة المرور',
                    style: getSemiBoldStyle(
                        color: ColorManager.primary, fontSize: 16.sp),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 16.h),
                  CustomPasswordFiled(
                    controller: loginCubit.passwordController,
                    hintText: '   ادخــل كـــلمة الـــمرور',
                    borderRadius: BorderRadius.circular(4),
                    validator: AppValidators.validatePassword,
                  ),
                  SizedBox(height: 24.h),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        Text(
                          'ليس لديك حساب ؟ ',
                          style: getTextStyle(
                              14.sp, FontWeight.w400, ColorManager.black),
                        ),
                        InkWell(
                          onTap: () {
                            context.go(Routes.registerRoute);
                          },
                          child: Text(
                            'انشاء حساب جديد ',
                            style: getTextStyle(
                                14.sp, FontWeight.bold, ColorManager.primary),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  CustomButton(
                    onTap: () {
                      loginCubit.login();
                    },
                    title: 'تسجيل الدخول',
                    color: ColorManager.primary,
                    outlineColor: ColorManager.white,
                    width: 328.w,
                    height: 48.h,
                    radius: 4.r,
                    fontcolor: ColorManager.white,
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
