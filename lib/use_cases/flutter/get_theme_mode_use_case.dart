import 'package:flutter/material.dart';

import 'package:shows_vault/domain/repositories/repositories.dart';
import '../use_case.dart';

final class GetThemeModeUseCase
    implements UseCase<ThemeMode, GetThemeModeUseCaseParams> {
  final FlutterAppRepository _flutterAppRepository;

  GetThemeModeUseCase(this._flutterAppRepository);

  @override
  ThemeMode execute(GetThemeModeUseCaseParams params) =>
      _flutterAppRepository.getThemeMode();
}

final class GetThemeModeUseCaseParams {
  const GetThemeModeUseCaseParams();
}
