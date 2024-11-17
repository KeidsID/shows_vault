import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "package:sv/domain/domain.dart";
import "package:sv/service_locator.dart";
import "package:sv/use_cases/use_cases.dart";

part "genres_provider.g.dart";

@Riverpod(keepAlive: true)
Future<List<Genre>> genres(Ref ref) {
  return ServiceLocator.find<GetGenresUseCase>()
      .execute(const GetGenresUseCaseParams());
}
