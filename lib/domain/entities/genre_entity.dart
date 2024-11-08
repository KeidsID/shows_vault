import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_entity.freezed.dart';
part 'genre_entity.g.dart';

@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
