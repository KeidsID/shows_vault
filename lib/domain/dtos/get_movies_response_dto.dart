import "package:freezed_annotation/freezed_annotation.dart";

import "../entities/entities.dart" show Movie;

part "get_movies_response_dto.freezed.dart";
part "get_movies_response_dto.g.dart";

@freezed
class GetMoviesResponseDto with _$GetMoviesResponseDto {
  const factory GetMoviesResponseDto({
    required int page,
    required int totalPages,
    required int totalResults,
    required List<Movie> results,
  }) = _GetMoviesResponseDto;

  factory GetMoviesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetMoviesResponseDtoFromJson(json);
}
