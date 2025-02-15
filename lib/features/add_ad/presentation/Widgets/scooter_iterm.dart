import 'package:ajrly/core/components/custom_text_filed.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/features/add_ad/presentation/Widgets/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScooterIterm extends StatelessWidget {
  const ScooterIterm({super.key});

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
        Text("اعمل هنا السويتشات لان انا جبت اخري  (ميتين ابو دا برنامج)",
            style: getSemiBoldStyle(color: ColorManager.red, fontSize: 12.sp),
            textAlign: TextAlign.center),
        Items(title: "سعر الايجار", hint: "سعر الايجار", svg: SvgAssets.price),
      ],
    );
  }
}
