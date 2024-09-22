import 'package:digi_app/screens/digimon_info_screen.dart';
import 'package:digi_app/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  digimonInfo,
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/digimon-info/:id',
      name: AppRoute.digimonInfo.name,
      builder: (context, state) => DigimonInfoScreen(
        id: int.parse(state.pathParameters['id']!),
      ),
    ),
  ],
);
