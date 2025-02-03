import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'profile_item.dart';

class Userinfo extends StatelessWidget {
  String email;
  String phone;
  String id;
  String birthday;
  Userinfo({Key? key , required this.email , required this.phone , required this.id , required this.birthday}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      children: [
        ProfileItem(
          text: "user@gmail.com",
          tittle: email,
          icon: Image.asset(IconAssets.Email),
        ),
        ProfileItem(
          text: "+201234567890",
          tittle: phone,
          icon: Image.asset(IconAssets.Phone_Call),
        ),
        ProfileItem(
          text: "01234567890123",
          tittle: id,
          icon: Image.asset(IconAssets.Driverlicense),
        ),
        ProfileItem(
          text: "01/01/2025",
          tittle: birthday,
          icon: Image.asset(IconAssets.Calendar),
        ),
      ],
    );
  }
}
