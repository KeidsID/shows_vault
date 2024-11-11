import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class LocalModule {
  @singleton
  Future<SharedPreferences> getSharedPreferences() =>
      SharedPreferences.getInstance();
}
