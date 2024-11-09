import 'package:chopper/chopper.dart';

import 'package:shows_vault/domain/dtos/dtos.dart';
import 'package:shows_vault/domain/entities/entities.dart';
import 'package:shows_vault/domain/repositories/repositories.dart';
import '../data/remote/remote.dart';

final class MoviesRepositoryImpl implements MoviesRepository {
  late final MovieListRemoteData _movieListRemoteData;
  late final GenresRemoteData _genresRemoteData;

  MoviesRepositoryImpl(ChopperClient remoteClient) {
    _movieListRemoteData = MovieListRemoteData.create(remoteClient);
    _genresRemoteData = GenresRemoteData.create(remoteClient);
  }

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
