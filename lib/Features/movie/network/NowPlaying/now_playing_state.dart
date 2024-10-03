
import '../../../../core/models/moviemodle.dart';

abstract class NowPlayingState {}

class NowPlayingInitial extends NowPlayingState {}
class NowPlayingLoading extends NowPlayingState {}
class NowPlayingLoaded extends NowPlayingState {
  final List<MovieModel> cubitNoemovie;

  NowPlayingLoaded({required this.cubitNoemovie});

}
class NowPlayingError extends NowPlayingState {
  final String errormsg;

  NowPlayingError(this.errormsg);
}
