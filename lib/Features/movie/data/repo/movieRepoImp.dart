

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_mvvm/Features/movie/data/repo/movieRepo.dart';
import 'package:movie_mvvm/core/error/errorhandle.dart';
import '../../../../core/models/genres.dart';
import '../../../../core/models/moviemodle.dart';
import '../../../../core/utils/apiservices.dart';

class MovieRepoImp extends MovieRepo{
  final ApiService apiService;
  MovieRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<MovieModel>>> fetchnowplayingmovie() async{
    try {
      var data = await apiService.get(
          endPoint:'now_playing?api_key=5767229a88626a832edd76ee14c03b41');
      List<MovieModel> nowmovies = [];
      for(var nmovie in data['results']){
        nowmovies.add(MovieModel.fromJson(nmovie));
      }
      return right(nowmovies);

    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<MovieModel>>> fetchupcomingmovie() async{
    try {
      var data = await apiService.get(
          endPoint:'upcoming?api_key=5767229a88626a832edd76ee14c03b41');
      List<MovieModel> upmovies = [];
      for(var movie in data['results']){
        upmovies.add(MovieModel.fromJson(movie));
      }
      return right(upmovies);

    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>>fetchpopularmovie() async{
    try {
      var data = await apiService.get(
          endPoint:'popular?api_key=5767229a88626a832edd76ee14c03b41');
      List<MovieModel> popularmovies = [];
      for(var pmovie in data['results']){
        popularmovies.add(MovieModel.fromJson(pmovie));
      }
      return right(popularmovies);

    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> fetchtopRatemovie() async{
    try {
      var data = await apiService.get(
          endPoint:'top_rated?api_key=5767229a88626a832edd76ee14c03b41');

      List<MovieModel> topmovies = [];
      for(var topmovie in data['results']){
        topmovies.add(MovieModel.fromJson(topmovie));
      }
      return right(topmovies);


    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> fetchsmillermovie({required double id}) async{
    try {
      var data = await apiService.get(
          endPoint:'$id/similar?api_key=5767229a88626a832edd76ee14c03b41');

      List<MovieModel> samemovies = [];
      for(var movie in data['results']){
        samemovies.add(MovieModel.fromJson(movie));
      }
      return right(samemovies);


    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
@override
  Future<Either<Failure, List<Genres>>> fetchgenremovie() async{
    try {
      var data = await apiService.get(
          endPoint:'list?api_key=5767229a88626a832edd76ee14c03b41');
      List<Genres> genres = [];
      for(var i in data['genres']){
        genres.add(Genres.fromJson(i));
      }
      return right(genres);


    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }


}