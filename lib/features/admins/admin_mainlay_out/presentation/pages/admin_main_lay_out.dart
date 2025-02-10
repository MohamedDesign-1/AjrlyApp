import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/routes/routes.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_mananger.dart';
import '../../../../../core/utils/styles_manager.dart';
import '../manager/admin_main_lay_out_cubit.dart';

class AdminMainLayOut extends StatelessWidget {
  const AdminMainLayOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminMainLayOutCubit, AdminMainLayOutState>(
      builder: (context, state) {
        final adminMainLayoutCubit = context.read<AdminMainLayOutCubit>();
        return Scaffold(
          appBar: (adminMainLayoutCubit.currentIndex == 0)
              ? AppBar(
            title: Text(
              'لوحة الادمن',
              style: getBoldStyle(color: ColorManager.white, fontSize: 18.sp),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: ColorManager.white,
              ),
              onPressed: () {
                context.go(Routes.mainLayoutRoute);
              },
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
              : null,
          body: state is AdminMainLayOutLoaded
              ? state.screens[adminMainLayoutCubit.currentIndex]
              : AdminMainLayOut(),
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: getBoldStyle(color: ColorManager.white, fontSize: 12.sp),
            unselectedLabelStyle: getBoldStyle(color: ColorManager.white, fontSize: 12.sp),
            currentIndex: adminMainLayoutCubit.currentIndex,
            onTap: adminMainLayoutCubit.changeIndex, // Update index on tap
            items: [
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
            showUnselectedLabels: true,
            backgroundColor: ColorManager.primary,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
    );
  }
}
