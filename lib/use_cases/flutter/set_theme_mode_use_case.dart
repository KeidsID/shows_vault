import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:shows_vault/domain/repositories/repositories.dart';
import '../use_case.dart';

@lazySingleton
final class SetThemeModeUseCase
    implements UseCase<Future<bool>, SetThemeModeUseCaseParams> {
  final FlutterAppRepository _flutterAppRepository;

  SetThemeModeUseCase(this._flutterAppRepository);

  @override
  Future<bool> execute(SetThemeModeUseCaseParams params) =>
      _flutterAppRepository.setThemeMode(params.mode);
}

final class SetThemeModeUseCaseParams {
  final ThemeMode mode;

  const SetThemeModeUseCaseParams([this.mode = ThemeMode.system]);
}
