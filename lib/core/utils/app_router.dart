


  import 'package:go_router/go_router.dart';
import 'package:movie_mvvm/Features/movie/UI/MoviePage.dart';

import '../../Features/movie/UI/homepage.dart';
import '../../Features/splash/splashscreen.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kMovieDetails = '/MoviePage';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => splash_screen(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) =>Home_Page(),
      ),
      GoRoute(
        path: kMovieDetails,
        builder: (context, state) =>Moviepage(),

      ),

    ],
  );
}
