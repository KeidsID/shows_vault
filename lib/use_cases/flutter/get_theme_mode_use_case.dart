import "package:flutter/material.dart";
import "package:injectable/injectable.dart";

import "package:sv/domain/domain.dart";
import "../use_case.dart";

@Singleton(signalsReady: true)
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
