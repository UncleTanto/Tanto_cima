

import '../../../../core/models/moviemodle.dart';

abstract class SameState {}

class SameInitial extends SameState {}
class SameLoading extends SameState {}
class SameLoaded extends SameState {
  final List<MovieModel> cubitesamemovie;

  SameLoaded({required this.cubitesamemovie});

}
class SameError extends SameState {
  final String errormsg;

  SameError(this.errormsg);
}
