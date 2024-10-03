import 'package:bloc/bloc.dart';
import 'package:movie_mvvm/Features/movie/data/repo/movieRepo.dart';
import 'package:movie_mvvm/Features/movie/network/Similar/similar_state.dart';


class SimilarCubit extends Cubit<SameState> {
  SimilarCubit(this.movieRepo) : super(SameInitial());
  final MovieRepo movieRepo;

  Future<void> fetchtsimilarmovie({required double id}) async {
    emit(SameLoading());
    var result = await movieRepo.fetchsmillermovie(id: id);

    result.fold(
          (failure) => emit(SameError(failure.errMessage)),
          (samemovie) => emit(SameLoaded(cubitesamemovie: samemovie)),
    );
  }

}
