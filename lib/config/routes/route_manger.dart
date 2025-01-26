import 'package:ajrly/config/routes/routes.dart';
import 'package:ajrly/features/favourite/presentation/pages/favourite.dart';
import 'package:ajrly/features/mainLayout/manager/main_layout_cubit.dart';
import 'package:ajrly/features/mainLayout/presentation/pages/main_layout.dart';
import 'package:ajrly/features/profile/presentation/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../../features/Home_Page/presentation/pages/homepage.dart';
import '../../features/splash_screen/presentation/pages/splash_screen.dart';

final getIt = GetIt.instance; // Ensure this is initialized somewhere in your project

final getRouter = GoRouter(
  initialLocation: Routes.splashRoute,
  routes: [
    GoRoute(
      path: Routes.splashRoute,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.mainLayoutRoute,
      builder: (context, state) => WillPopScope(
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
          child: const MainLayout(),
        ),
      ),
    ),
    GoRoute(
      path: Routes.homeRoute,
      builder: (context, state) => WillPopScope(
        onWillPop: () async {
          context.go(Routes.mainLayoutRoute);
          return false;
        },
        child: const Homepage(),
      ),
    ),
    GoRoute(
      path: Routes.client_profileRoute,
      builder: (context, state) => WillPopScope(
        onWillPop: () async {
          context.go(Routes.mainLayoutRoute);
          return false;
        },
        child: const ProfileScreen(),
      ),
    ),
    GoRoute(
      path: Routes.favoriteRoute,
      builder: (context, state) => WillPopScope(
        onWillPop: () async {
          context.go(Routes.mainLayoutRoute);
          return false;
        },
        child: const Favourite(),
      ),
    ),
  ],
);