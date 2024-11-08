import "../dtos/dtos.dart";
import "../entities/entities.dart";

enum GetMoviesType { nowPlaying, popular, topRated, upcoming }

abstract interface class MoviesRepository {
  Future<GetMoviesResponseDto> getMovies(GetMoviesType type);

  Future<List<Genre>> getGenres();
}
