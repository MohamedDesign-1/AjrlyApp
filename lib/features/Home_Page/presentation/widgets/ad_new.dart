import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/features/Home_Page/presentation/widgets/ad_new_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdNew extends StatefulWidget {
  const AdNew({Key? key}) : super(key: key);

  @override
  State<AdNew> createState() => _AdNewState();
}

class _AdNewState extends State<AdNew> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        AdNewCard(),
        AdNewCard(),
      ],
    );
  }
}