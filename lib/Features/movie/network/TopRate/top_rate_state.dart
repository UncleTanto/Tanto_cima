

import '../../../../core/models/moviemodle.dart';

abstract class TopRateState {}

class TopRateInitial extends TopRateState {}
class TopRateLoading extends TopRateState {}
class TopRateLoaded extends TopRateState {
  final List<MovieModel> cubitetopmovie;

  TopRateLoaded({required this.cubitetopmovie});

}
class TopRateError extends TopRateState {
  final String errormsg;

  TopRateError(this.errormsg);
}
