import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:shows_vault/domain/entities/entities.dart';
import 'package:shows_vault/service_locator.dart';
import 'package:shows_vault/use_cases/use_cases.dart';

part "genres_provider.g.dart";

@Riverpod(keepAlive: true)
Future<List<Genre>> genres(Ref ref) {
  return ServiceLocator.find<GetGenresUseCase>()
      .execute(const GetGenresUseCaseParams());
}
