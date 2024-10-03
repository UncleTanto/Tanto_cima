
import '../../../../core/models/moviemodle.dart';

abstract class upcomingState {}

class upcomingInitial extends upcomingState {}
class upcomingLoading extends upcomingState {}
class upcomingLoaded extends upcomingState {
  final List<MovieModel> cubitNoemovie;

  upcomingLoaded({required this.cubitNoemovie});

}
class upcomingError extends upcomingState {
  final String errormsg;

  upcomingError(this.errormsg);
}
