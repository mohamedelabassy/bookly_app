import 'package:bookly_app/Features/home/presntation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presntation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presntation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetatilsView = '/BookDetatilsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetatilsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
