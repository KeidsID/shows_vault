import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_entity.freezed.dart';
part 'movie_entity.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required List<int> genreIds,

    /// Title based on fetch localization.
    /// Refer to [originalTitle] to get the original title.
    required String title,
    required String originalTitle,
    required String overview,
    required String? posterPath,
    required String? backdropPath,
    required double popularity,
    required double voteAverage,
    required int voteCount,

    /// Release date based on fetch localization.
    required String? releaseDate,
    required String originalLanguage,
    required bool adult,
    required bool video,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
