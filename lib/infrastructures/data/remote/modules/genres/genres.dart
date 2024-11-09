import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

import 'package:shows_vault/domain/entities/entities.dart';

import "./libs/converters/converters.dart";

part "genres.chopper.dart";

/// https://developer.themoviedb.org/reference/genre-movie-list
@lazySingleton
@ChopperApi(baseUrl: "/genre")
abstract class GenresRemoteData extends ChopperService {
  @factoryMethod
  static GenresRemoteData create([ChopperClient? client]) =>
      _$GenresRemoteData(client);

  @FactoryConverter(response: GenresConverter.responseFactory)
  @Get(path: "/movie/list")
  Future<Response<List<Genre>>> getMovieGenres();

  @FactoryConverter(response: GenresConverter.responseFactory)
  @Get(path: "/tv/list")
  Future<Response<List<Genre>>> getTvShowGenres();
}
