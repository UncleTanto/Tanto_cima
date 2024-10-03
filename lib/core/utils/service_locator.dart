
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_mvvm/Features/movie/data/repo/movieRepo.dart';
import 'package:movie_mvvm/Features/movie/data/repo/movieRepoImp.dart';

import 'apiservices.dart';


final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()),);
  getIt.registerSingleton<MovieRepoImp>(
    MovieRepoImp(
        getIt.get<ApiService>(),
    ),);
}
