import "package:flutter/material.dart";

abstract interface class FlutterAppRepository {
  ThemeMode getThemeMode();
  Future<bool> setThemeMode(ThemeMode themeMode);
}
