import 'package:cat_breeds/features/screens.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: SplashScreen.name,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/breeds',
      name: BreedsScreen.name,
      builder: (context, state) => const BreedsScreen(),
      routes: [
        GoRoute(
          path: 'breedsDetails/:breedId',
          name: BreedsDetails.name,
          builder: (context, state) => const BreedsDetails(),
        ),
      ],
    )
  ],
);
