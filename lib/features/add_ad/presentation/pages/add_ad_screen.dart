import 'package:ajrly/core/components/custom_appbar.dart';
import 'package:ajrly/core/components/custom_botton.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/features/add_ad/presentation/Widgets/add__image.dart';
import 'package:ajrly/features/add_ad/presentation/Widgets/car_item.dart';
import 'package:ajrly/features/add_ad/presentation/Widgets/scooter_iterm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAdScreen extends StatelessWidget {
  const AddAdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: CustomAppbar(title: 'إضافة إعلان'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 8.h,
            children: <Widget>[
              AddImage(),
              Text("اعمل هنا السويتشات لان انا جبت اخري  (ميتين ابو دا برنامج)",
                  style: getSemiBoldStyle(
                      color: ColorManager.red, fontSize: 12.sp),
                  textAlign: TextAlign.center),
              CarItem(),
              SizedBox(
                height: 16.h,
              ),
              CustomBotton(
                  text: "نشر الاعلان",
                  color: ColorManager.primary,
                  onTap: () {},
                  width: double.infinity),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
