import 'package:bloc/bloc.dart';
import 'package:movie_mvvm/Features/movie/data/repo/movieRepo.dart';
import 'package:movie_mvvm/Features/movie/network/TopRate/top_rate_state.dart';


class ToprateCubit extends Cubit<TopRateState> {
  ToprateCubit(this.movieRepo) : super(TopRateInitial());
  final MovieRepo movieRepo;

  Future<void> fetchtopRatemovie() async {
    emit(TopRateLoading());
    var result = await movieRepo.fetchtopRatemovie();

    result.fold(
          (failure) => emit(TopRateError(failure.errMessage)),
          (toppmovie) => emit(TopRateLoaded(cubitetopmovie: toppmovie)),
    );
  }

}
