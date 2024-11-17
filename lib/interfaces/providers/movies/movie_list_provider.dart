import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "package:sv/domain/domain.dart";
import "package:sv/service_locator.dart";
import "package:sv/use_cases/use_cases.dart";

part "movie_list_provider.g.dart";

@riverpod
Future<GetMoviesResponseDto> movieList(Ref ref, GetMoviesType type) {
  return ServiceLocator.find<GetMoviesUseCase>()
      .execute(GetMoviesUseCaseParams(type));
}
