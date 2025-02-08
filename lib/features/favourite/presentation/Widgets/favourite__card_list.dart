import 'package:ajrly/features/favourite/presentation/Widgets/favouritecard.dart';
import 'package:flutter/material.dart';

class FavouritecardList extends StatelessWidget {
  const FavouritecardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Favouritecard(
                  price: "100",
                  carName: "Toyota",
                  car: "Corolla",
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}