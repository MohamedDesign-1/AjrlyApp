import 'package:ajrly/core/components/custom_buttomn.dart';
import 'package:ajrly/features/car_details_and_checkout_screen/check_out_screen/widgets/payment_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../booking/presentation/Widgets/booking_details.dart';
import '../../../booking/presentation/Widgets/booking_information_widget.dart';

class ChechOutScreen extends StatefulWidget {
  final String carname;
  final String noseats;
  final String gasoline;
  final String gearbox;
  final String price;
  final String? category;

  const ChechOutScreen({
    super.key,
    required this.carname,
    required this.noseats,
    required this.gasoline,
    required this.gearbox,
    required this.price,
    this.category,
  });

  @override
  State<ChechOutScreen> createState() => _ChechOutScreenState();
}

class _ChechOutScreenState extends State<ChechOutScreen> {
  bool _isPaymentSelected = false;

  @override
  Widget build(BuildContext context) {
    double finalPrice =
        double.parse(widget.price) + (double.parse(widget.price) * 0.2);
    String finalPriceText = finalPrice.toStringAsFixed(2);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: AppBar(
          backgroundColor: ColorManager.primary,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => context.go(Routes.mainLayoutRoute),
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: BookingInfo_card(
              carName: widget.carname,
              car: widget.category ?? '',
              seats: widget.noseats,
              gear: widget.gearbox,
              engine: widget.gasoline,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: BookingDetails(),
          ),
          Align(
            alignment: Alignment.topRight,
            child: PaymentWidget(
              onSelectionChanged: (bool selected) {
                setState(() {
                  _isPaymentSelected = selected;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'السعر ',
                        style: getBoldStyle(
                          color: ColorManager.black,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'كامل',
                        style: getBoldStyle(
                          color: ColorManager.black,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        finalPriceText,
                        style: getBoldStyle(
                          color: ColorManager.primary,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'جنيه',
                        style: getBoldStyle(
                          color: ColorManager.primary,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                CustomButton(
                  onTap: () {
                    if (_isPaymentSelected) {
                      context.go(Routes.CheckOutSucessfulScreen);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Center(
                              child: Text(
                            'من فضلك اختر طريقة الدفع أولاً',
                            style: getBoldStyle(color: ColorManager.white,fontSize: 14.sp),
                          ),
                          ),
                          duration: Duration(milliseconds: 400),
                          backgroundColor: ColorManager.red,
                        ),
                      );
                    }
                  },
                  title: 'ادفع الان',
                  color: ColorManager.primary,
                  outlineColor: ColorManager.primary,
                  width: 240.w,
                  height: 45.h,
                  radius: 4,
                  fontcolor: ColorManager.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
