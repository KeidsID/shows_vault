abstract interface class ConfigService {
  const ConfigService();

  EnvSchema get env;
}

abstract interface class EnvSchema {
  const EnvSchema();

  bool get isUsePathUrlStrategy;
  String get tmdbAccessToken;
}
