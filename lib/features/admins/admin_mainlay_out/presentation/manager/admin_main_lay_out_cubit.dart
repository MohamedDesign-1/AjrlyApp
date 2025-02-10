import 'package:ajrly/features/admins/admin_home_page/presentation/pages/admin_home_page.dart';
import 'package:ajrly/features/admins/admin_user_control/presentation/pages/admin_user_control.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../admin_ads_control/presentation/pages/admin_ads_control.dart';

part 'admin_main_lay_out_state.dart';

@injectable
class AdminMainLayOutCubit extends Cubit<AdminMainLayOutState> {
  AdminMainLayOutCubit() : super(AdminMainLayOutInitial()){
    loadInitialData();
  }

  int currentIndex = 0;

  final List<Widget> screens = [
    AdminHomePage(),
    AdminUserControl(),
    AdminAdsControl(),
  ];

  void loadInitialData() {
    emit(AdminMainLayOutLoaded(currentIndex, screens));
  }

  void changeIndex(int index) {
    currentIndex = index;
    emit(AdminMainLayOutLoaded(currentIndex, screens));
  }

}
