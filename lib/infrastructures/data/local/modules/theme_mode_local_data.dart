import "package:flutter/material.dart";
import "package:injectable/injectable.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../libs/constants/constants.dart";

@lazySingleton
final class ThemeModeLocalData {
  final SharedPreferencesWithCache _sharedPreferences;

  const ThemeModeLocalData(this._sharedPreferences);

  ThemeMode get() {
    final cachedIndex = _sharedPreferences.getInt(CacheKey.kThemeMode);

    return ThemeMode.values[cachedIndex ?? ThemeMode.system.index];
  }

  Future<void> set(ThemeMode themeMode) =>
      _sharedPreferences.setInt(CacheKey.kThemeMode, themeMode.index);
}
