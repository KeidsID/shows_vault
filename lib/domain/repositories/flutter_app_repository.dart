import "dart:async";

import "package:flutter/material.dart";

abstract interface class FlutterAppRepository {
  FutureOr<ThemeMode> getThemeMode();
  FutureOr<void> setThemeMode(ThemeMode themeMode);
}
