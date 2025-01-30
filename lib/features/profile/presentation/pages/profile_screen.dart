import 'package:ajrly/core/components/custom_appbar.dart';
import 'package:ajrly/features/profile/presentation/Widgets/profilebottom.dart';
import 'package:ajrly/features/profile/presentation/Widgets/userinfo.dart';

import 'package:ajrly/features/profile/presentation/Widgets/wellcome_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: CustomAppbar(title: 'الملف الشخصي' ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 16.h,
            children: [
              WellcomeCard(),
              Userinfo(),
              Profilebottom(),
            ],
          ),
        ),
      ),
    );
  }
}
