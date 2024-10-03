import 'package:dartz/dartz.dart';

import '../../../../core/error/errorhandle.dart';
import '../../../../core/models/genres.dart';
import '../../../../core/models/moviemodle.dart';




abstract class MovieRepo{
Future<Either<Failure,List<MovieModel>>>fetchpopularmovie();
Future<Either<Failure,List<MovieModel>>>fetchnowplayingmovie();
Future<Either<Failure,List<MovieModel>>>fetchtopRatemovie();
Future<Either<Failure,List<MovieModel>>>fetchupcomingmovie();
Future<Either<Failure,List<MovieModel>>>fetchsmillermovie({required double id});
Future<Either<Failure,List<Genres>>>fetchgenremovie();

}