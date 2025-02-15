import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';
import 'items.dart';

class CarItem extends StatelessWidget {
  const CarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Items(title: "العنوان", hint: "ادخل عنوان للاعلان (اذكر نوع العريبة)", svg: SvgAssets.pen),
        Items(title: "الوصف", hint: "ادخل وصف للاعلان ( اذكر طراز العربية)", svg: SvgAssets.pen),
        Items(title: "نوع العربية", hint: "اختار الفئة (سيدان / كوبية ...الخ)", svg: SvgAssets.caricon),
        Items(title: "عدد الركاب", hint: "ادخل عدد الركاب", svg: SvgAssets.userfav),
        Items(title: "فترة الايجار", hint: "فترة الايجار (يوم / اسبوع / سنه)", svg: SvgAssets.calender),
        Items(title: "عدد الكيلومترات المقطوعة", hint: "المسافة المقطوعة بالكلومتر", svg: SvgAssets.meter),
        Text("اعمل هنا السويتشات لان انا جبت اخري  (ميتين ابو دا برنامج)",
            style: getSemiBoldStyle(color: ColorManager.red, fontSize: 12.sp),
            textAlign: TextAlign.center),
        Items(title: "سعر الايجار", hint: "سعر الايجار", svg: SvgAssets.price),
      ],
    );
  }
}
