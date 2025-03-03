import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';

class ChooseKind extends StatefulWidget {
  final String mainTitle;
  final String titile1;
  final String titile2;
  final String value1;
  final String value2;

  const ChooseKind({
    super.key,
    required this.mainTitle,
    required this.titile1,
    required this.titile2,
    required this.value1,
    required this.value2,
  });

  @override
  _ChooseKindState createState() => _ChooseKindState();
}

class _ChooseKindState extends State<ChooseKind> {
  late String _selectedFuel;

  @override
  void initState() {
    super.initState();
    _selectedFuel = widget.value1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.mainTitle,
          style: getMediumStyle(color: ColorManager.primary, fontSize: 16.sp),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  widget.titile1,
                  style: getBoldStyle(color: ColorManager.primary, fontSize: 14.sp),
                ),
                Radio<String>(
                  value: widget.value1,
                  groupValue: _selectedFuel,
                  onChanged: (value) {
                    setState(() {
                      _selectedFuel = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  widget.titile2,
                  style: getBoldStyle(color: ColorManager.primary, fontSize: 14.sp),
                ),
                Radio<String>(
                  value: widget.value2,
                  groupValue: _selectedFuel,
                  onChanged: (value) {
                    setState(() {
                      _selectedFuel = value!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}