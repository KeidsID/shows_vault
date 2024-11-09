import 'package:injectable/injectable.dart';

import 'package:shows_vault/domain/domain.dart';
import '../data/remote/remote.dart';

@LazySingleton(as: MoviesRepository)
final class MoviesRepositoryImpl implements MoviesRepository {
  final MovieListRemoteData _movieListRemoteData;
  final GenresRemoteData _genresRemoteData;

  const MoviesRepositoryImpl(this._movieListRemoteData, this._genresRemoteData);

  @override
  Future<List<Genre>> getGenres() async {
    final response = await _genresRemoteData.getMovieGenres();
    final genres = response.body;

    if (genres == null) {
      throw Exception('Failed to get genres');
    }

    return genres;
  }

  @override
  Future<GetMoviesResponseDto> getMovies(GetMoviesType type) async {
    final response = await switch (type) {
      GetMoviesType.nowPlaying => _movieListRemoteData.getNowPlayingMovies(),
      GetMoviesType.popular => _movieListRemoteData.getPopularMovies(),
      GetMoviesType.topRated => _movieListRemoteData.getTopRatedMovies(),
      GetMoviesType.upcoming => _movieListRemoteData.getUpcomingMovies(),
    };
    final responseDto = response.body;

    if (responseDto == null) {
      throw Exception('Failed to get movies');
    }

    return responseDto;
  }
}
