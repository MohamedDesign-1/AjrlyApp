import 'package:ajrly/core/components/custom_password_filed.dart';
import 'package:ajrly/core/components/custom_text_filed.dart';
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
        toolbarHeight: 223,
        shape: RoundedRectangleBorder(
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
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  'تسجيل الدخول',
                  style:
                  getTextStyle(32, FontWeight.bold, ColorManager.primary),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text('يرجى إدخال البيانات التالية لتسجيل الدخول',
                    style:
                    getTextStyle(24, FontWeight.w300, ColorManager.primary),
                    textAlign: TextAlign.center),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 216.h,
              width: 328.w,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'البريد الإلكتروني',
                      style: getTextStyle(
                          16, FontWeight.w400, ColorManager.primary),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Spacer(),
                  CustomTextFiled(
                    hintText: '   ادخــل الــبريـد الالــكــتروني',
                    borderRadius: BorderRadius.circular(4),
                    suffixIcon: SvgPicture.asset(
                      SvgAssets.email,
                      height: 16.h,
                      width: 16.w,
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'كـــلمة الـــمرور',
                      style: getTextStyle(
                          16, FontWeight.w400, ColorManager.primary),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Spacer(),
                  CustomPasswordFiled(
                    hintText: '   ادخــل كـــلمة الـــمرور',
                    borderRadius: BorderRadius.circular(4),
                    suffixIcon: SvgPicture.asset(
                      SvgAssets.lock,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  Spacer(),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        Text(
                          'ليس لديك حساب ؟ ',
                          style: getTextStyle(
                              14, FontWeight.w400, ColorManager.black),
                        ),
                        InkWell(
                          onTap:(){
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

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,30,0,0),
              child: CustomButton(
                  onTap:(){context.go(Routes.mainLayOutRoute);},
                  title: 'تسجيل الدخول',
                  color: ColorManager.primary,
                  outlineColor:ColorManager.white,
                  width: 328.w,
                  height: 56.h,
                  radius: 4,
                  fontcolor: ColorManager.white),
            ),
            Spacer(
              flex: 8,
            )
          ],
        ),
      ),
    );
  }
}
