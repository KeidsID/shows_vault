import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

import 'package:shows_vault/domain/dtos/dtos.dart';

import "../libs/converters/converters.dart";

part 'movie_list.chopper.dart';

/// https://developer.themoviedb.org/reference/movie-now-playing-list
@lazySingleton
@ChopperApi(baseUrl: "/movie")
abstract class MovieListRemoteData extends ChopperService {
  @factoryMethod
  static MovieListRemoteData create([ChopperClient? client]) =>
      _$MovieListRemoteData(client);

  @FactoryConverter(response: GetMoviesConverter.responseFactory)
  @Get(path: "/now_playing")
  Future<Response<GetMoviesResponseDto>> getNowPlayingMovies();

  @FactoryConverter(response: GetMoviesConverter.responseFactory)
  @Get(path: "/popular")
  Future<Response<GetMoviesResponseDto>> getPopularMovies();

  @FactoryConverter(response: GetMoviesConverter.responseFactory)
  @Get(path: "/top_rated")
  Future<Response<GetMoviesResponseDto>> getTopRatedMovies();

  @FactoryConverter(response: GetMoviesConverter.responseFactory)
  @Get(path: "/upcoming")
  Future<Response<GetMoviesResponseDto>> getUpcomingMovies();
}
