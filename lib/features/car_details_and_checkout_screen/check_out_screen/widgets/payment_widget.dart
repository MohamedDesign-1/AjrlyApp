import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';

enum PaymentMethod { applePay, visa }

class PaymentWidget extends StatefulWidget {
  final Color selectedColor;

  final Function(bool isSelected)? onSelectionChanged;

  const PaymentWidget({
    super.key,
    this.selectedColor = ColorManager.primary,
    this.onSelectionChanged,
  });

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  PaymentMethod? _selectedMethod;

  bool get isPaymentSelected => _selectedMethod != null;

  void _updateSelectedMethod(PaymentMethod? method) {
    setState(() {
      _selectedMethod = method;
    });

    // Notify parent
    widget.onSelectionChanged?.call(_selectedMethod != null);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: ColorManager.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'اختر طريقة الدفع',
            style: getBoldStyle(
              color: ColorManager.black,
              fontSize: 20.sp,
            ),
          ),
          SizedBox(height: 16.h),
          _buildPaymentTile(
            method: PaymentMethod.applePay,
            title: 'ابل باي',
            iconPath: SvgAssets.applepay,
          ),
          _buildPaymentTile(
            method: PaymentMethod.visa,
            title: 'فيزا كارد',
            iconPath: SvgAssets.visa,
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentTile({
    required PaymentMethod method,
    required String title,
    required String iconPath,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(
          color: _selectedMethod == method
              ? widget.selectedColor
              : ColorManager.iceWhite,
          width: 1.5,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 6.h),
      child: RadioListTile<PaymentMethod>(
        value: method,
        groupValue: _selectedMethod,
        activeColor: widget.selectedColor,
        onChanged: _updateSelectedMethod,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: getBoldStyle(
                color: ColorManager.black,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(width: 10.w),
            SvgPicture.asset(
              iconPath,
              width: 35.w,
              height: 35.h,
            ),
          ],
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
      ),
    );
  }
}
