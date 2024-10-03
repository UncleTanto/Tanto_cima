import 'package:bloc/bloc.dart';
import 'package:movie_mvvm/Features/movie/data/repo/movieRepo.dart';
import 'package:movie_mvvm/Features/movie/network/Genres/genres_state.dart';


class GenresCubit extends Cubit<GenresState> {
  GenresCubit(this.movieRepo) : super(GenresInitial());
  final MovieRepo movieRepo;

  Future<void> fetchgenres() async {
    emit(GenresLoading());
    var result = await movieRepo.fetchgenremovie();

    result.fold(
          (failure) => emit(GenresError(failure.errMessage)),
          (genreslist) => emit(GenresLoaded(cubiteGenres: genreslist)),
    );
  }
}
