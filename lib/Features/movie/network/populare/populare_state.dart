
import '../../../../core/models/moviemodle.dart';

abstract class PopulareState {}

class PopulareInitial extends PopulareState {}
class PopulareLoading extends PopulareState {}
class PopulareLoaded extends PopulareState {
  final List<MovieModel> cubitepopularmovie;

  PopulareLoaded({required this.cubitepopularmovie});

}
class PopulareError extends PopulareState {
final String errormsg;

  PopulareError(this.errormsg);
}
