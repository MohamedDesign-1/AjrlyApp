import 'package:ajrly/features/Home_Page/presentation/pages/homepage.dart';
import 'package:ajrly/features/booking/presentation/pages/booking_screen.dart';
import 'package:ajrly/features/favourite/presentation/pages/favourite.dart';
import 'package:ajrly/features/profile/presentation/pages/profile_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../add_ad/presentation/pages/add_ad_screen.dart';

part 'main_layout_state.dart';

@injectable
class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(MainLayoutInitial()) {
    loadInitialData();
  }

  int currentIndex = 0;

  final List<Widget> screens = [
    Homepage(),
    BookingScreen(),
    AddAdScreen(),
    Favourite(),
    ProfileScreen(),
  ];

  void loadInitialData() {
    emit(MainLayoutLoaded(currentIndex, screens));
  }

  void changeIndex(int index) {
    currentIndex = index;
    emit(MainLayoutLoaded(currentIndex, screens));
  }

}
