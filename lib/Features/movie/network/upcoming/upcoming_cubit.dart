import 'package:bloc/bloc.dart';
import 'package:movie_mvvm/Features/movie/network/NowPlaying/now_playing_state.dart';
import 'package:movie_mvvm/Features/movie/network/upcoming/upcoming_state.dart';

import '../../data/repo/movieRepo.dart';


class UpcomingCubit extends Cubit<upcomingState> {
  UpcomingCubit(this.movieRepo) : super(upcomingInitial());

  final MovieRepo movieRepo;

  Future<void> fetchupcommingmovie() async {
    emit(upcomingLoading());
    var result = await movieRepo.fetchupcomingmovie();

    result.fold(
          (failure) => emit(upcomingError(failure.errMessage)),
          (nowmovie) => emit(upcomingLoaded(cubitNoemovie: nowmovie)),
    );
  }

}
