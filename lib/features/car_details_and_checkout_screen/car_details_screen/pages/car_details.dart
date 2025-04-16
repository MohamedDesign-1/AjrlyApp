import 'package:ajrly/config/routes/routes.dart';
import 'package:ajrly/core/utils/assets_manager.dart';
import 'package:ajrly/core/utils/color_mananger.dart';
import 'package:ajrly/core/utils/styles_manager.dart';
import 'package:ajrly/features/car_details_and_checkout_screen/car_details_screen/widgets/car_details_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/components/custom_buttomn.dart';

class CarDetails extends StatelessWidget {
  final String carphoto;
  final int numpassengers;
  final String fuel;
  final String transmission;
  final int maxspeed;
  final String boldtitle;
  final String description;
  final String carownername;
  final int price;
  final String category;


  const CarDetails({
    super.key,
    required this.carphoto,
    required this.numpassengers,
    required this.fuel,
    required this.transmission,
    required this.maxspeed,
    required this.boldtitle,
    required this.description,
    required this.carownername,
    required this.price, required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(360.w, 60.h),
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
                'تفاصيل العربية',
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
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 328.w,
              height: 265.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorManager.iceWhite,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(SvgAssets.rate,
                            height: 25, width: 25),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(SvgAssets.avilable,
                            height: 25, width: 25),
                      ),
                    ],
                  ),
                  Center(
                    child: AspectRatio(
                      aspectRatio: 13 / 8,
                      child: Image.network(
                        carphoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarDetailsContainers(
                    icon: SvgAssets.speedo, text: maxspeed.toString()),
                const Spacer(),
                CarDetailsContainers(
                    icon: SvgAssets.gearboxx, text: transmission),
                const Spacer(),
                CarDetailsContainers(icon: SvgAssets.Gasoline, text: fuel),
                const Spacer(),
                CarDetailsContainers(
                    icon: SvgAssets.user3, text: numpassengers.toString()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  boldtitle,
                  style: getBoldStyle(color: ColorManager.black, fontSize: 22),
                ),
                Text(
                  description,
                  style:
                      getBoldStyle(color: ColorManager.iceWhite, fontSize: 15),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: SizedBox(
              width: 328.w,
              height: 64.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(SvgAssets.warning),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    ' $carownername : مكان السيارة',
                    style: getRegularStyle(
                        color: ColorManager.black, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: SizedBox(
              width: 328.w,
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'السعر',
                          style: getBoldStyle(
                              color: ColorManager.black, fontSize: 20),
                        ),
                        Text(
                          price.toString(),
                          style: getBoldStyle(
                              color: ColorManager.primary, fontSize: 20),
                        ),
                        Text(
                          'جنيه',
                          style: getBoldStyle(
                              color: ColorManager.primary, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  CustomButton(
                    onTap: () {
                      context.go(Routes.ChechOutScreen, extra: {
                        'carname': boldtitle,
                        'noseats': numpassengers,
                        'gasoline': fuel,
                        'gearbox': transmission,
                        'price': price,
                        'category': category,
                      });
                    },
                    title: 'احجز دلوقتي',
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
          ),
        ],
      ),
    );
  }
}
