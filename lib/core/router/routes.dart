import 'package:architecture/core/router/route_name.dart';
import 'package:architecture/feature/auth/view/home_screen.dart';
import 'package:architecture/feature/auth/view/splash_screen.dart';
import 'package:go_router/go_router.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.splashScreen,
    routes: [
      GoRoute(
        name: RouteNames.splashScreen,
        path: RoutePaths.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: RouteNames.homeScreen,
        path: RoutePaths.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
