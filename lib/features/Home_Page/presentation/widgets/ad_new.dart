import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/toast_utils.dart';
import 'package:ajrly/features/Home_Page/presentation/manager/get_all_ads_cubit.dart';
import 'package:ajrly/features/Home_Page/presentation/widgets/ad_new_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/di/di.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../domain/entities/ads_entity.dart';

class AdNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetAllAdsCubit>()..getAllAds(),
      child: BlocConsumer<GetAllAdsCubit, GetAllAdsState>(
        listener: (context, state) {
          if (state is GetAllAdsError) {
            ToastUtils.showErrorToast(context, 'خطأ', state.failure.errorMessage);
          }
        },
        builder: (context, state) {
          if (state is GetAllAdsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetAllAdsSuccess) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: state.getAllAds.length,
                itemBuilder: (context, index) {
                  final ad = state.getAllAds[index]; // Access ad here
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: ColorManager.lightgray.withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 150.h,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0.w),
                            child: Column(
                              children: [
                                Container(
                                  height: 150.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: ColorManager.white,
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: Image.network(
                                      ad.data?[index].images?.isNotEmpty ?? false
                                          ? ad.data![index].images![1]
                                          : 'default_image_url',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0.w),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "يوم/ ",
                                                  style: getRegularStyle(
                                                      color: ColorManager.black,
                                                      fontSize: 12.sp),
                                                ),
                                                Text(
                                                  ad.data?[index].price?.toString() ?? "",
                                                  style: getBoldStyle(
                                                      color: ColorManager.primary,
                                                      fontSize: 16.sp),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    color: ColorManager.white,
                                                    borderRadius: BorderRadius.circular(16.r),
                                                  ),
                                                  child: Container(
                                                    height: 22.h,
                                                    width: 50.w,
                                                    child: Text(
                                                      ad.data?[index].vehicleCategory ?? '',
                                                      style: getBoldStyle(
                                                          color: ColorManager.primary,
                                                          fontSize: 12.sp),
                                                      textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 4.h),
                                                Text(
                                                  ad.data?[index].title ?? '',
                                                  style: getBoldStyle(
                                                      color: ColorManager.black,
                                                      fontSize: 16.sp),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  ad.data?[index].transmissionType ?? '',
                                                  style: getSemiBoldStyle(
                                                      color: ColorManager.black,
                                                      fontSize: 12.sp),
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
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  ad.data?[index].fuelType ?? '',
                                                  style: getSemiBoldStyle(
                                                      color: ColorManager.black,
                                                      fontSize: 12.sp),
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
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "راكب${ad.data?[index].numberOfSeats}",
                                                  style: getSemiBoldStyle(
                                                      color: ColorManager.black,
                                                      fontSize: 12.sp),
                                                ),
                                                SizedBox(width: 4.w),
                                                SvgPicture.asset(
                                                  SvgAssets.user2,
                                                  height: 16.h,
                                                  color: ColorManager.primary,
                                                ),
                                              ],
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
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return const Center(child: Text("No Ads Available"));
          }
        },
      ),
    );
  }
}
