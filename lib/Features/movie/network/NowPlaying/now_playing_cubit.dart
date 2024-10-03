import 'package:bloc/bloc.dart';
import 'package:movie_mvvm/Features/movie/network/NowPlaying/now_playing_state.dart';

import '../../data/repo/movieRepo.dart';


class NowPlayingCubit extends Cubit<NowPlayingState> {
  NowPlayingCubit(this.movieRepo) : super(NowPlayingInitial());

  final MovieRepo movieRepo;

  Future<void> fetchnowplayinmovie() async {
    emit(NowPlayingLoading());
    var result = await movieRepo.fetchnowplayingmovie();

    result.fold(
          (failure) => emit(NowPlayingError(failure.errMessage)),
          (nowmovie) => emit(NowPlayingLoaded(cubitNoemovie: nowmovie)),
    );
  }

}
