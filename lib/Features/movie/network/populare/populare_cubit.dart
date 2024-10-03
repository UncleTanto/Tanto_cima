import 'package:bloc/bloc.dart';
import 'package:movie_mvvm/Features/movie/data/repo/movieRepo.dart';
import 'package:movie_mvvm/Features/movie/network/populare/populare_state.dart';

class PopulareCubit extends Cubit<PopulareState> {
  PopulareCubit(this.movieRepo) : super(PopulareInitial());
  final MovieRepo movieRepo;

  Future<void> fetchpopularmovie() async {
    emit(PopulareLoading());
    var result = await movieRepo.fetchpopularmovie();

    result.fold(
          (failure) => emit(PopulareError(failure.errMessage)),
          (pmovie) => emit(PopulareLoaded(cubitepopularmovie: pmovie)),
    );
  }

}
