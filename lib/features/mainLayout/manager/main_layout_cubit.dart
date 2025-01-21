import 'package:ajrly/features/Home_Page/presentation/homepage.dart';
import 'package:ajrly/features/favourite/presentation/pages/favourite.dart';
import 'package:ajrly/features/profile/presentation/pages/profile_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'main_layout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(MainLayoutInitial()) {
    loadInitialData();
  }

  int currentIndex = 0;

  final List<Widget> screens = [
    Homepage(),
    Favourite(),
    ProfileScreen()
  ];

  void loadInitialData() {
    emit(MainLayoutLoaded(currentIndex, screens));
  }

  void changeIndex(int index) {
    currentIndex = index;
    emit(MainLayoutLoaded(currentIndex, screens));
  }

}
