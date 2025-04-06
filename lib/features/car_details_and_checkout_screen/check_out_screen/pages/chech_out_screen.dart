import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';


class ChechOutScreen extends StatelessWidget {
  const ChechOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(60.h, 60.w),
        child: AppBar(
          backgroundColor: ColorManager.primary,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => context.go(Routes.CheckOutSucessfulScreen), // use this [mainLayoutRoute] after edit tt
                child: SvgPicture.asset(SvgAssets.leftarrow),
              ),
              const Spacer(),
              Text(
                'تأكيد الحجز',
                style: getBoldStyle(
                  color: ColorManager.iceWhite,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Text('data'),

    );
  }
}
