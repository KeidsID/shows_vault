import 'package:envied/envied.dart';
import 'package:injectable/injectable.dart';

import "package:shows_vault/domain/services/config_service.dart";

part 'config_service.g.dart';

@Singleton(as: ConfigService)
class ConfigServiceImpl implements ConfigService {
  @override
  EnvSchema get env => EnvSchemaImpl();
}

class EnvSchemaImpl implements EnvSchema {
  @override
  String get tmdbAccessToken => _Env.tmdbApiAccessToken;
}

@Envied(useConstantCase: true, obfuscate: true)
abstract class _Env {
  @EnviedField()
  static final String tmdbApiAccessToken = __Env.tmdbApiAccessToken;
}
