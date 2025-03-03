import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';
import 'choose_kind.dart';
import 'items.dart';

class ScooterItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Items(title: "العنوان", hint: "ادخل عنوان للاعلان (اذكر نوع الاسكوتر)", svg: SvgAssets.pen),
        Items(title: "الوصف", hint: "ادخل وصف للاعلان ( اذكر طراز الاسكوتر)", svg: SvgAssets.pen),
        Items(title: "نوع الاسكتور", hint: "اختار الفئة ( كهربائي / رياضي)", svg: SvgAssets.scootericon),
        Items(title: "فترة الايجار", hint: "فترة الايجار (يوم / اسبوع / سنه)", svg: SvgAssets.calender),
        Items(title: "عدد الكيلومترات المقطوعة", hint: "المسافة المقطوعة بالكلومتر", svg: SvgAssets.meter),
        ChooseKind(mainTitle: 'نوع الوقود', titile1: 'بنزين', titile2: 'كهرباء', value1: 'petrol', value2: 'elctric', ),
        Items(title: "سعر الايجار", hint: "سعر الايجار", svg: SvgAssets.price),
      ],
    );
  }
}