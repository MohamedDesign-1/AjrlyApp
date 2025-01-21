import 'package:ajrly/config/routes/routes.dart';
import 'package:ajrly/features/auth/onboarding_screen/presentation/pages/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/register_screen/presentation/pages/regsiter_screen.dart';
import '../../features/splash_screen/presentation/pages/splash_screen.dart';

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
      builder: (context, state) => const RegsiterScreen(),
    ),

  ],
);
