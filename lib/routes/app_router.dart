import 'package:go_router/go_router.dart';
import 'package:safarsync_app/config/route_names.dart';
import 'package:safarsync_app/screens/auth/login_screen.dart';
import 'package:safarsync_app/screens/home/home_shell.dart';
import 'package:safarsync_app/screens/splash/splash_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: RouteNames.splash,

    routes: [
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),

      // GoRoute(
      //   path: RouteNames.home,
      //   builder: (context, state) => const HomeScreen(),
      // ),
      GoRoute(
        path: RouteNames.splash,
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        path: RouteNames.home,
        builder: (context, state) => const HomeShell(),
      ),
    ],
  );
}
