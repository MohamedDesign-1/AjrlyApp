import 'package:ajrly/config/routes/routes.dart';
import 'package:ajrly/features/Home_Page/presentation/pages/homepage.dart';
import 'package:ajrly/features/auth/login_screen/presentation/pages/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../features/auth/login_screen/presentation/manager/login_cubit.dart';
import '../../features/auth/onboarding_screen/presentation/pages/onboarding_screen.dart';
import '../../features/auth/register_screen/presentation/manager/register_cubit.dart';
import '../../features/auth/register_screen/presentation/pages/regsiter_screen.dart';
import '../../features/mainLayout/presentation/manager/main_layout_cubit.dart';
import '../../features/mainLayout/presentation/pages/main_layout.dart';
import '../../features/splash_screen/presentation/pages/splash_screen.dart';
import '../di/di.dart';

final getRouter = GoRouter(
  initialLocation: Routes.splashRoute,
  routes: [
    GoRoute(
      path: Routes.splashRoute,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.onboardingRoute,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: Routes.registerRoute,
      builder: (context, state) =>
          BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            lazy: false,
            child: RegsiterScreen(),
          ),
    ),
    GoRoute(
      path: Routes.loginRoute,
      builder: (context, state) =>
          BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            lazy: false,
            child: LoginScreen(),
          ),
    ),
    GoRoute(
      path: Routes.mainLayoutRoute,
      builder: (context, state) =>
          WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  lazy: false,
                  create: (context) => getIt<MainLayoutCubit>(),
                ),
              ],
              child: MainLayout(),
            ),
          ),
    ),
    GoRoute(
      path: Routes.homeRoute,
      builder: (context, state) =>
          WillPopScope(
            onWillPop: () async {
              context.go(Routes.mainLayoutRoute);
              return false;
            },
            child: Homepage(),
          ),
    ),
  ],
);
