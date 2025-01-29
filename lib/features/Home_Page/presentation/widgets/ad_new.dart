import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/toast_utils.dart';
import 'package:ajrly/features/Home_Page/presentation/manager/get_all_ads_cubit.dart';
import 'package:ajrly/features/Home_Page/presentation/widgets/ad_new_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/di/di.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/styles_manager.dart';

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
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: AdNewCard(),
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
