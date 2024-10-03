

import 'package:movie_mvvm/core/models/genres.dart';

abstract class GenresState {}

class GenresInitial extends GenresState {}
class GenresLoading extends GenresState {}
class GenresLoaded extends GenresState {
  final List<Genres> cubiteGenres;

  GenresLoaded({required this.cubiteGenres});

}
class GenresError extends GenresState {
  final String errormsg;

  GenresError(this.errormsg);
}
