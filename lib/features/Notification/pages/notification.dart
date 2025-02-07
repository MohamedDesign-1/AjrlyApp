import 'package:ajrly/core/components/custom_all_screens_appbar.dart';
import 'package:ajrly/core/components/not_have_items.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: CustomAppbarAllScreens(title: 'الاشعارات'),
      ),
      body: NotHaveItems(
        message: "ليس لديك اي اشعارات",
        color: ColorManager.primary,
        size: 24,
        spacing: 4,
        icon: Icons.notifications_off,
      ),
    );
  }
}
