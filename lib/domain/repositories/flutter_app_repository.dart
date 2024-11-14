import "package:flutter/material.dart";

abstract interface class FlutterAppRepository {
  ThemeMode getThemeMode();
  Future<void> setThemeMode(ThemeMode themeMode);
}
