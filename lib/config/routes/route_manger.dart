import 'package:ajrly/config/routes/routes.dart';
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
  ],
);
