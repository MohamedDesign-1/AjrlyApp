import 'package:ajrly/core/components/custom_password_filed.dart';
import 'package:ajrly/core/components/custom_text_filed.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
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
      body: Column(
        children: [
          Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'تسجيل الدخول',
                style: getTextStyle(32, FontWeight.bold, ColorManager.primary),
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
          Container(
            height: 216.h,
            width: 328.w,
            child: Column(
              children: [
                Text('data'),
                CustomTextFiled(
                  hintText: '   ادخــل الــبريـد الالــكــتروني',
                  borderRadius: BorderRadius.circular(4),
                  suffixIcon: SvgPicture.asset(
                    SvgAssets.email,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                CustomPasswordFiled(
                    hintText: '   ادخــل كـــلمة الـــمرور',
                    borderRadius: BorderRadius.circular(4),
                    suffixIcon: SvgPicture.asset(
                    SvgAssets.email,
                    height: 24.h,
                    width: 24.w,
                  ),

                )
              ],
            ),
          ),
          Spacer(
            flex: 10,
          )
        ],
      ),
    );
  }
}
