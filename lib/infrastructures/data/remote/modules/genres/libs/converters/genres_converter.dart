import 'dart:async';

import 'package:chopper/chopper.dart';

import "package:shows_vault/domain/entities/entities.dart";

class GenresConverter extends JsonConverter {
  const GenresConverter();

  @override
  FutureOr<Response<T>> convertResponse<T, InnerT>(Response response) {
    final res =
        super.convertResponse(response) as Response<Map<String, dynamic>>;

    final genresJson = res.body?['genres'] as List<Map<String, dynamic>>?;

    return res.copyWith(
      body: genresJson?.map((e) => Genre.fromJson(e)).toList() ?? [],
    ) as Response<T>;
  }

  static FutureOr<Response<T>> responseFactory<T, InnerT>(Response response) =>
      const GenresConverter().convertResponse<T, InnerT>(response);
}
