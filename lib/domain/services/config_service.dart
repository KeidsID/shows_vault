abstract interface class ConfigService {
  EnvSchema get env;
}

abstract interface class EnvSchema {
  String get tmdbAccessToken;
}
