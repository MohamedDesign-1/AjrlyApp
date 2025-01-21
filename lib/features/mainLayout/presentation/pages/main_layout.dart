import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/features/mainLayout/manager/main_layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainLayoutCubit = context.read<MainLayoutCubit>();

    return Scaffold(
      appBar: (mainLayoutCubit.currentIndex == 1)
          ? AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'مرحباً',
                  style: getMediumStyle(
                    color: ColorManager.white,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'studentName',
                  style: getMediumStyle(
                    color: ColorManager.white,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              ImageAssets.logo,
              width: 50.w,
              height: 50.h,
            ),
          ],
        ),
        backgroundColor: ColorManager.primary,
        toolbarHeight: 90.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16.r),
          ),
        ),
      )
          : null,
      body: mainLayoutCubit.screens[mainLayoutCubit.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: mainLayoutCubit.currentIndex,
        onTap: mainLayoutCubit.changeIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'الإعدادات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الملف الشخصي',
          ),
        ],
      ),
    );
  }
}