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
    return BlocBuilder<MainLayoutCubit, MainLayoutState>(
      builder: (context, state) {
        final mainLayoutCubit = context.read<MainLayoutCubit>();
        return Scaffold(
          appBar: (mainLayoutCubit.currentIndex == 0 )
              ? AppBar(
            title: Text(
              'مرحبا بك ^_^ ',
              style: getBoldStyle(color: ColorManager.white, fontSize: 18.sp),
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
          body: state is MainLayoutLoaded
              ? state.screens[mainLayoutCubit.currentIndex]
              : const Center(child: CircularProgressIndicator()),
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: getBoldStyle(color: ColorManager.white, fontSize: 12.sp),
            unselectedLabelStyle: getBoldStyle(color: ColorManager.white, fontSize: 12.sp),
            currentIndex: mainLayoutCubit.currentIndex,

            onTap: mainLayoutCubit.changeIndex,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(SvgAssets.home , height: 24.h , width: 24.w,),
                ),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(SvgAssets.booking , height: 24.h , width: 24.w,),
                ),
                label: 'حجوزاتي',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgAssets.fav , height: 24.h , width: 24.w,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(SvgAssets.fav , height: 24.h , width: 24.w,),
                ),
                label: 'مفضلاتي',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(SvgAssets.user , height: 24.h , width: 24.w,),
                ),
                label: 'البروفايل',
              ),
            ],
            selectedItemColor: ColorManager.white,
            unselectedItemColor: ColorManager.gray,
            showUnselectedLabels: true,
            backgroundColor: ColorManager.primary,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
          ),
          floatingActionButton: Container(
            margin: EdgeInsets.only(bottom: 10.h , top: 50.h),
            child: SizedBox(
              height: 70.h,
              width: 70.w,
              child: FittedBox(
                child: FloatingActionButton(
                backgroundColor: ColorManager.white,
                foregroundColor: ColorManager.primary,
                elevation: 0,
                shape: CircleBorder(side: BorderSide(color: ColorManager.primary , width: 4.w , strokeAlign: BorderSide.strokeAlignOutside)),
                onPressed: (){} , child: Icon(Icons.add),
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
