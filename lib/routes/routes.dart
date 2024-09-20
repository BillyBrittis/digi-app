import 'package:digi_app/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
