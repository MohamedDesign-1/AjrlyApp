import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/custom_password_filed.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';

class CustomRegistrationPasswordField extends StatelessWidget {
  final String titletext;
  final String boxtext;
  final String iconasset;

  const CustomRegistrationPasswordField(
      {super.key,
      required this.titletext,
      required this.boxtext,
      required this.iconasset});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              titletext,
              style: getTextStyle(
                16,
                FontWeight.w400,
                ColorManager.primary,
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: CustomPasswordFiled(
            hintText: boxtext,
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: SvgPicture.asset(
                iconasset,
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
