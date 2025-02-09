import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_mananger.dart';
import '../../../../../core/utils/styles_manager.dart';
import '../manager/admin_main_lay_out_cubit.dart';

class AdminMainLayOut extends StatelessWidget {
  const AdminMainLayOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BlocBuilder listens to state changes and updates the UI
    return BlocBuilder<AdminMainLayOutCubit, AdminMainLayOutState>(
      builder: (context, state) {
        final adminMainLayoutCubit = context.read<AdminMainLayOutCubit>();

        return Scaffold(
          // Dynamic AppBar based on the selected index
          appBar: (adminMainLayoutCubit.currentIndex == 0)
              ? AppBar(
            title: Text(
              'لوحة الادمن',
              style: getBoldStyle(color: ColorManager.white, fontSize: 18.sp),
            ),
            centerTitle: true,
            backgroundColor: ColorManager.primary,
            toolbarHeight: 90.h,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(16.r),
              ),
            ),
          )
              : null, // If index is not 0, hide the AppBar
          body: state is AdminMainLayOutLoaded
              ? state.screens[adminMainLayoutCubit.currentIndex] // Show screen if loaded
              : const SizedBox.shrink(), // No loading indicator, just empty space
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: getBoldStyle(color: ColorManager.white, fontSize: 12.sp),
            unselectedLabelStyle: getBoldStyle(color: ColorManager.white, fontSize: 12.sp),
            currentIndex: adminMainLayoutCubit.currentIndex,
            onTap: adminMainLayoutCubit.changeIndex, // Update index on tap
            items: [
              // Home screen tab
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    SvgAssets.home,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                label: 'الرئيسية',
              ),
              // Users screen tab
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    SvgAssets.userfav,
                    height: 24.h,
                    width: 24.w,
                    color: ColorManager.white,
                  ),
                ),
                label: 'المستخدمين',
              ),
              // Ads screen tab
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    SvgAssets.ads,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                label: 'الاعلانات',
              ),
              // Logout tab
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    SvgAssets.logout,
                    height: 24.h,
                    width: 24.w,
                    color: ColorManager.white,
                  ),
                ),
                label: 'تسجيل الخروج',
              ),
            ],
            selectedItemColor: ColorManager.white,
            unselectedItemColor: ColorManager.white,
            showUnselectedLabels: true, // Show labels for unselected items
            backgroundColor: ColorManager.primary,
            elevation: 0,
            type: BottomNavigationBarType.fixed, // Fixed item layout
          ),
        );
      },
    );
  }
}
