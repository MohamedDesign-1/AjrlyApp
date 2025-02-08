import 'package:ajrly/core/components/custom_appbar.dart';
import 'package:ajrly/core/components/not_have_items.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/features/favourite/presentation/Widgets/favourite__card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: CustomAppbar(title: 'مفضلاتي'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NotHaveItems(
              height: 120.h,
              width: 120.w,
              message: "المفضلة بتاعتك فاضية \n !دلوقتي",
              image: Image.asset(ImageAssets.Heart),
              color: ColorManager.black,
              size: 24,
              spacing: 14,
            ) ??
            FavouritecardList(),
      ),
    );
  }
}
