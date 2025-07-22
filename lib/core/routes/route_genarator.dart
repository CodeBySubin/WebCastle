

import 'package:webcastle/core/utils/storage_helper.dart';
import 'package:webcastle/features/authentication/presentation/view/login.dart';
import 'package:webcastle/features/home/presentation/view/home_screen.dart';

import 'app_routes.dart';
import 'package:go_router/go_router.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/', 
    routes: [
    GoRoute(
        path: '/',
        redirect: (context, state) async {
          final token = await SecureStorageHelper.getToken();
          return token != null ? AppRoutes.home : AppRoutes.login;
        },
      ),

      GoRoute(
        path: AppRoutes.home,
        name: RouteNames.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        name: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
