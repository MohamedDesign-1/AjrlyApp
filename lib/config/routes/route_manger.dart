import 'package:ajrly/config/routes/routes.dart';
import 'package:ajrly/features/mainLayout/presentation/pages/main_layout.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash_screen/presentation/pages/splash_screen.dart';

final getRouter = GoRouter(
  initialLocation: Routes.splashRoute,
  routes: [
    GoRoute(
      path: Routes.splashRoute,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.mainLayoutRoute,
      builder: (context, state) => const MainLayout(),
    ),
  ],
);
