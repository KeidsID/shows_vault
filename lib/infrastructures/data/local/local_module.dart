import "package:injectable/injectable.dart";
import "package:shared_preferences/shared_preferences.dart";

@module
abstract class LocalModule {
  @singleton
  @preResolve
  Future<SharedPreferencesWithCache> getSharedPreferences() {
    return SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
    );
  }
}
