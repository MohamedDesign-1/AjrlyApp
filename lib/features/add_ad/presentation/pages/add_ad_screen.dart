import 'package:ajrly/core/components/custom_appbar.dart';
import 'package:ajrly/core/components/custom_botton.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/features/add_ad/presentation/Widgets/add__image.dart';
import 'package:ajrly/features/add_ad/presentation/Widgets/car_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/scooter_iterm.dart';
import '../Widgets/switch_custom.dart';

class AddAdScreen extends StatefulWidget {
  const AddAdScreen({super.key});

  @override
  _AddAdScreenState createState() => _AddAdScreenState();
}

class _AddAdScreenState extends State<AddAdScreen> {
  bool isCarSelected = true;

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
            spacing: 16.h,
            children: [
              AddImage(),
              ItemSwitch(
                onItemChanged: (value) {
                  setState(() {
                    isCarSelected = value == 'car';
                  });
                },
              ),
              isCarSelected ? CarItem() : ScooterItem(),
              CustomBotton(
                text: "نشر الاعلان",
                color: ColorManager.primary,
                onTap: () {},
                width: double.infinity,
              ),
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
