import 'package:ajrly/core/components/custom_buttomn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ajrly/features/admins/admin_home_page/presentation/widgets/admin_card_user_or_ad.dart';
import 'package:ajrly/features/admins/admin_home_page/presentation/widgets/welcome_admin_banner.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/routes/routes.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_mananger.dart';
import '../../../../../core/utils/styles_manager.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              WelcomeAdminBanner(),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AdminCardUserOrAd(
                      onTap: () => context.go(Routes.Users_ControlRoute),
                      iconName: SvgAssets.userfav,
                      sectionName: "ادارة المستخدمين"),
                  AdminCardUserOrAd(
                      onTap: () => context.go(Routes.Ads_ControlRoute),
                      iconName: SvgAssets.ads,
                      sectionName: "ادارة الاعلانات"),
                ],
              ),
              SizedBox(height: 16.h),
              Text(
                'اعلانات معلقة',
                style:
                    getBoldStyle(color: ColorManager.primary, fontSize: 16.sp),
              ),
              SizedBox(height: 16.h),
              Container(
                height: 355.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorManager.lightGrey.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    spacing: 8.h,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.asset(
                            ImageAssets.car2,
                            fit: BoxFit.cover,
                            height: 130.h,
                            width: double.infinity,
                          )),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'يوم /',
                                style: getBoldStyle(
                                    color: ColorManager.gray, fontSize: 14.sp),
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                'جنية ',
                                style: getBoldStyle(
                                    color: ColorManager.primary,
                                    fontSize: 16.sp),
                              ),
                              Text('5000',
                                  style: getBoldStyle(
                                      color: ColorManager.primary,
                                      fontSize: 16.sp),
                                  textDirection: TextDirection.ltr),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 24.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  borderRadius: BorderRadius.circular(32.r),
                                ),
                                child: Center(
                                    child: Text(
                                  "سيدان",
                                  style: getSemiBoldStyle(
                                      color: ColorManager.primary,
                                      fontSize: 14.sp),
                                )),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                'نسيان صني للايجار',
                                style: getBoldStyle(
                                    color: ColorManager.black, fontSize: 16.sp),
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: ColorManager.gray,
                        thickness: 1.h,
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "اوتوماتيك",
                                style: getBoldStyle(
                                    color: ColorManager.black, fontSize: 12.sp),
                              ),
                              SizedBox(width: 4.w),
                              SvgPicture.asset(
                                SvgAssets.gearBox,
                                height: 16.h,
                                color: ColorManager.primary,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "بنزين",
                                style: getBoldStyle(
                                    color: ColorManager.black, fontSize: 12.sp),
                              ),
                              SizedBox(width: 4.w),
                              SvgPicture.asset(
                                SvgAssets.engine,
                                height: 16.h,
                                color: ColorManager.primary,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "4 ركاب",
                                style: getBoldStyle(
                                    color: ColorManager.black, fontSize: 12.sp),
                                textDirection: TextDirection.ltr,
                              ),
                              SizedBox(width: 4.w),
                              SvgPicture.asset(
                                SvgAssets.userfav,
                                height: 16.h,
                                color: ColorManager.primary,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: ColorManager.gray,
                        thickness: 1.h,
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                              onTap: () {},
                              title: "رفض",
                              color: ColorManager.red,
                              outlineColor: ColorManager.red,
                              width: 150.w,
                              height: 60.h,
                              radius: 8.r,
                              fontcolor: ColorManager.white,
                                            ),
                          CustomButton(
                            onTap: () {},
                            title: "قبول",
                            color: ColorManager.green,
                            outlineColor: ColorManager.green,
                            width: 150.w,
                            height: 60.h,
                            radius: 8.r,
                            fontcolor: ColorManager.white,
                          ),

                        ],
                      ),
                    ],
                ),
              ),
          ),
            ],
        ),
      ),
      ),
    );
  }
}
