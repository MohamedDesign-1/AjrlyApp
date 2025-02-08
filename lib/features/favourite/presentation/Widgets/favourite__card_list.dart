import 'package:ajrly/features/favourite/presentation/Widgets/favouritecard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouritecardList extends StatelessWidget {
  const FavouritecardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Favouritecard(
              carName: "نيسان صني للاجار",
              car: "سيدان", seats: '4راكب', gear: 'مانوال', engine: 'بنزبن',
            ),
            SizedBox(height: 8.h),
          ],
        );
      },
    );
  }
}