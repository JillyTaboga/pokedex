import 'package:go_router/go_router.dart';
import 'package:pokedex/interface/screens/cape_screen.dart';
import 'package:pokedex/interface/screens/home/home_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CapeScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
