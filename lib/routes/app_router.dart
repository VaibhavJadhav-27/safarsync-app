import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:safarsync_app/config/route_names.dart';
import 'package:safarsync_app/providers/auth_provider.dart';
import 'package:safarsync_app/screens/auth/login_screen.dart';
import 'package:safarsync_app/screens/home/home_shell.dart';

final goRouteProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: RouteNames.login,

    //Auth Guard
    redirect: (context, state) {
      final loggedIn = authState.isAuthenticated;
      final goingToLogin = state.matchedLocation == RouteNames.login;

      //If Not logged in -> redirect to login
      if (!loggedIn && !goingToLogin) {
        return RouteNames.login;
      }

      //If logged in and trying to go to login -> redirect to home
      if (loggedIn && goingToLogin) {
        return RouteNames.home;
      }

      return null; // no redirection
    },

    routes: [
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),

      GoRoute(
        path: RouteNames.home,
        builder: (context, state) => const HomeShell(),
      ),
    ],
  );
});

// class AppRouter {
//   static final router = GoRouter(
//     initialLocation: RouteNames.splash,

//     routes: [
//       GoRoute(
//         path: RouteNames.login,
//         builder: (context, state) => const LoginScreen(),
//       ),

//       // GoRoute(
//       //   path: RouteNames.home,
//       //   builder: (context, state) => const HomeScreen(),
//       // ),
//       GoRoute(
//         path: RouteNames.splash,
//         builder: (context, state) => const SplashScreen(),
//       ),
//     ],
//   );
// }
