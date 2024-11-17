import "package:flutter/material.dart";
import "package:injectable/injectable.dart";

import "package:sv/domain/domain.dart";
import "../data/local/local.dart";

@LazySingleton(as: FlutterAppRepository)
final class FlutterAppRepositoryImpl implements FlutterAppRepository {
  final ThemeModeLocalData _themeModeLocalData;

  const FlutterAppRepositoryImpl(this._themeModeLocalData);

  @override
  ThemeMode getThemeMode() => _themeModeLocalData.get();

  @override
  Future<void> setThemeMode(ThemeMode themeMode) =>
      _themeModeLocalData.set(themeMode);
}
