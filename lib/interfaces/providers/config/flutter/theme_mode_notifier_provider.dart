import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:shows_vault/service_locator.dart';
import 'package:shows_vault/use_cases/use_cases.dart';

part 'theme_mode_notifier_provider.g.dart';

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  ThemeMode build() {
    return ServiceLocator.find<GetThemeModeUseCase>()
        .execute(const GetThemeModeUseCaseParams());
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    final isSuccess = await ServiceLocator.find<SetThemeModeUseCase>()
        .execute(SetThemeModeUseCaseParams(themeMode));

    if (!isSuccess) return;

    state = themeMode;
  }
}
