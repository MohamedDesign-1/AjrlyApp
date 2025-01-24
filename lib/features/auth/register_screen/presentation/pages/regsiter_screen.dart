import 'package:ajrly/core/components/custom_buttomn.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/features/auth/register_screen/widgets/custom_registration_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../config/routes/routes.dart';
import '../../widgets/custom_registeration_password_field.dart';

class RegsiterScreen extends StatelessWidget {
  const RegsiterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> screenwidgets = [
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
          style: getTextStyle(20, FontWeight.normal, ColorManager.primary),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
      ),
      CustomRegisterScreenTextFied(
          titletext: 'الاسم بالكامل',
          boxtext: '   ادخــل اسمك بالكامل',
          iconasset: SvgAssets.user),
      CustomRegisterScreenTextFied(
          titletext: 'البريد الإلكتروني',
          boxtext: '   ادخــل الــبريـد الالــكــتروني',
          iconasset: SvgAssets.email),
      CustomRegisterScreenTextFied(
          titletext: 'رقم الموبيل',
          boxtext: '   ادخــل رقم الموبيل',
          iconasset: SvgAssets.phone),
      CustomRegisterScreenTextFied(
          titletext: 'رقم بطاقة الرقم القومي',
          boxtext: '   ادخل الرقم القومي المكون من 14 رقم',
          iconasset: SvgAssets.driverlisence),
      CustomRegisterScreenTextFied(
          titletext: 'تاريخ ميلادك',
          boxtext: '   ادخل تاريخ ميلادك',
          iconasset: SvgAssets.calender),
      CustomRegistrationPasswordField(
          titletext: 'كـلمـة الـمـرور',
          boxtext: '   ادخــل كـــلمة الـــمرور',
          iconasset: SvgAssets.registrationlock),
      CustomRegistrationPasswordField(
          titletext: 'تأكيد كـلمـة الـمـرور',
          boxtext: '   تأكيد كـــلمة الـــمرور',
          iconasset: SvgAssets.registrationlock),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
        child: CustomButton(
            onTap: () {
              context.go(Routes.mainLayOutRoute);
            },
            title: 'تسجيل حساب جديد',
            color: ColorManager.primary,
            outlineColor: ColorManager.white,
            width: 328.w,
            height: 56.h,
            radius: 4,
            fontcolor: ColorManager.white),
      )
    ];
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: ColorManager.primary,
                onPressed: () {
                  context.go(Routes.loginRoute);
                },
              ),
            ),
          )),
      body: ListView.builder(
        itemCount: screenwidgets.length,
        itemBuilder: (BuildContext context, int index) {
          return screenwidgets[index];
        },
      ),
    );
  }
}

class CustomRegisterScreenPasswordFied {}
