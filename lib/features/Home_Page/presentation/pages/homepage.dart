import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/features/Home_Page/presentation/widgets/ad_new.dart';
import 'package:ajrly/features/Home_Page/presentation/widgets/custom_Bottom_home.dart';
import 'package:ajrly/features/Home_Page/presentation/widgets/custom_card.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 10.h,
            children: [
              CustomCard(
                  color: ColorManager.primary,
                  height: 140.h,
                  width: double.infinity
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 10.w),
                child: Text(
                  "الفئات",
                  style: getBoldStyle(
                    color: ColorManager.black,
                    fontSize: 18.sp,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomBottonHome(
                      svg: SvgPicture.asset(
                        SvgAssets.scooter,
                        height: 45.h,
                      ),
                      color: ColorManager.lightgray.withValues(alpha: 0.8),
                      onTap: () {},
                      width: 162.w,
                      height: 92.h,
                      text: 'سكوترز'),
                  CustomBottonHome(
                      svg: SvgPicture.asset(
                        SvgAssets.truck,
                        height: 45.h,
                      ),
                      text: "عربيات",
                      color: ColorManager.lightgray.withValues(alpha: 0.8),
                      onTap: () {},
                      width: 162.w,
                      height: 94.h),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Text(
                      "مشاهدة الكل",
                      style: getBoldStyle(
                          color: ColorManager.primary, fontSize: 18.sp),
                    ),
                    onTap: () {},
                  ),
                  Text(
                    "اخر العروض",
                    style:
                    getBoldStyle(color: ColorManager.black, fontSize: 18.sp),
                  ),
                ],
              ),
              AdNew(),
            ],
          ),
        ),
      ),
    );
  }
}