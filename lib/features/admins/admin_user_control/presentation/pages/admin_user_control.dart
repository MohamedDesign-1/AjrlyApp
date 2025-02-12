import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/features/admins/admin_user_control/presentation/widgets/counter_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/routes/routes.dart';
import '../../../../../core/utils/color_mananger.dart';
import '../../../../../core/utils/styles_manager.dart';

class AdminUserControl extends StatelessWidget {
  const AdminUserControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("لوحة تحكم المستخدمين",
              style: getBoldStyle(color: ColorManager.white, fontSize: 18.sp)),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: ColorManager.white,
            ),
            onPressed: () {
              context.go(Routes.Admin_MainLayoutRoute);
            },
          ),
          backgroundColor: ColorManager.primary,
          toolbarHeight: 90.h,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16.r),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CounterCard(
                    sectionIcon: SvgAssets.deActiveUsers,
                    sectionName: "عدد الحسابات المفعلة",
                    sectionNum: "110",
                  ),
                  CounterCard(
                    sectionIcon: SvgAssets.deActiveUsers,
                    sectionName: "عدد الحسابات المفعلة",
                    sectionNum: "110",
                  ),
                  CounterCard(
                    sectionIcon: SvgAssets.deActiveUsers,
                    sectionName: "عدد الحسابات المفعلة",
                    sectionNum: "110",
                  ),
                  CounterCard(
                    sectionIcon: SvgAssets.deActiveUsers,
                    sectionName: "عدد الحسابات المفعلة",
                    sectionNum: "110",
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
