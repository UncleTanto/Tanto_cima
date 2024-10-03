import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_mvvm/Features/movie/data/repo/movieRepoImp.dart';
import 'package:movie_mvvm/Features/movie/network/Genres/genres_cubit.dart';
import 'package:movie_mvvm/Features/movie/network/NowPlaying/now_playing_cubit.dart';
import 'package:movie_mvvm/Features/movie/network/Similar/similar_cubit.dart';
import 'package:movie_mvvm/Features/movie/network/TopRate/top_rate_cubit.dart';
import 'package:movie_mvvm/core/utils/app_router.dart';
import 'Features/movie/network/populare/populare_cubit.dart';
import 'Features/splash/splashscreen.dart';
import 'core/utils/constants.dart';
import 'core/utils/service_locator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return
          MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => ToprateCubit(getIt.get<MovieRepoImp>())..fetchtopRatemovie(),
              ),
              BlocProvider(
                create: (context) => PopulareCubit(getIt.get<MovieRepoImp>())..fetchpopularmovie(),
              ),
              BlocProvider(create: (context) => NowPlayingCubit(getIt.get<MovieRepoImp>())..fetchnowplayinmovie(),
              ),
              BlocProvider(create: (context) => GenresCubit(getIt.get<MovieRepoImp>())..fetchgenres(),
              ),
              BlocProvider(create: (context) => SimilarCubit(getIt.get<MovieRepoImp>())..fetchtsimilarmovie(id: 533535),
              ),
            ],
            child: MaterialApp.router(
              routerConfig: AppRouter.router,
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: BgPrimaryColor,
              ),
              debugShowCheckedModeBanner: false,
            ),
          );
      },
      child: splash_screen(),
    );


    return
      MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ToprateCubit(getIt.get<MovieRepoImp>())..fetchtopRatemovie(),
        ),
        BlocProvider(
          create: (context) => PopulareCubit(getIt.get<MovieRepoImp>())..fetchpopularmovie(),
        ),
        BlocProvider(create: (context) => NowPlayingCubit(getIt.get<MovieRepoImp>())..fetchnowplayinmovie(),
        ),
        BlocProvider(create: (context) => GenresCubit(getIt.get<MovieRepoImp>())..fetchgenres(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: BgPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
