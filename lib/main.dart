import 'package:ajrly/bloc_observer.dart';
import 'package:ajrly/core/utils/shared_pref_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/di/di.dart';
import 'config/routes/route_manger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  SharedPrefUtils.init();
  configureDependencies();
  runApp(AjrlyApp());
}

class AjrlyApp extends StatelessWidget {
  const AjrlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: getRouter,
        );
      },
    );
  }
}
