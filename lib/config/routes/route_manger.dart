import 'package:ajrly/config/routes/routes.dart';
import 'package:ajrly/features/auth/login_screen/presentation/pages/login_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../features/splash_screen/presentation/pages/splash_screen.dart';

final getRouter = GoRouter(
  initialLocation: Routes.splashRoute,
  routes: [
    GoRoute(
      path: Routes.splashRoute,
      builder: (context, state) => const SplashScreen(),
    ),




    GoRoute(
      path: Routes.loginRoute,
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
