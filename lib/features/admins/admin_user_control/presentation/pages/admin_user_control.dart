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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CounterCard(
                      sectionIcon: SvgAssets.downloadPdf,
                      sectionName: "تحميل كملف PDF",
                      sectionNum: "110",
                    ),
                    CounterCard(
                      sectionIcon: SvgAssets.deActiveUsers,
                      sectionName: "عدد الحسابات المعطلة",
                      sectionNum: "110",
                    ),
                    CounterCard(
                      sectionIcon: SvgAssets.activeUsers,
                      sectionName: "عدد الحسابات المفعلة",
                      sectionNum: "110",
                    ),
                    CounterCard(
                      sectionIcon: SvgAssets.totalUsers,
                      sectionName: "اجمالي المستخدمين",
                      sectionNum: "110",
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Text("معلومات الحسابات",
                    style: getBoldStyle(color: ColorManager.black, fontSize: 20.sp)),
                SizedBox(height: 8.h),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8.0.w),
                  decoration: BoxDecoration(
                    color: ColorManager.lightgray,
                    borderRadius: BorderRadius.all(Radius.circular(16.r)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "حالة الحساب",
                              style: getBoldStyle(color: ColorManager.primary, fontSize: 16.sp),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "رقم الموبايل",
                              style: getBoldStyle(color: ColorManager.primary, fontSize: 16.sp),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "الاسم بالكامل",
                              style: getBoldStyle(color: ColorManager.primary, fontSize: 16.sp),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "رقم المستخدم",
                              style: getBoldStyle(color: ColorManager.primary, fontSize: 16.sp),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 2),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                "تعطيل",
                                style: getBoldStyle(color: ColorManager.black, fontSize: 12.sp),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "0123456789",
                                style: getBoldStyle(color: ColorManager.black, fontSize: 12.sp),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "محمد أحمد",
                                style: getBoldStyle(color: ColorManager.black, fontSize: 12.sp),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "${index + 1}",
                                style: getBoldStyle(color: ColorManager.black, fontSize: 12.sp),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        separatorBuilder: (context, index) => Divider(thickness: 1),
                        itemCount: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
