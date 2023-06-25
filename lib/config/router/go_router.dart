import 'package:go_router/go_router.dart';

import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      name: CardsScreen.name,
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      name: SnackBarScreen.name,
      path: '/snack_bar',
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      name: AnimatedScreen.name,
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      name: AppTutorialScreen.name,
      path: '/app_tutorial',
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      name: UiControlsScreen.name,
      path: '/ui_controls',
      builder: (context, state) => const UiControlsScreen(),
    ),
  ]
);