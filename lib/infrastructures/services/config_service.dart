import 'package:envied/envied.dart';
import 'package:injectable/injectable.dart';

import "package:shows_vault/domain/services/config_service.dart";

part 'config_service.g.dart';

@Singleton(as: ConfigService)
class ConfigServiceImpl implements ConfigService {
  const ConfigServiceImpl();

  @override
  EnvSchema get env => const EnvSchemaImpl();
}

class EnvSchemaImpl implements EnvSchema {
  const EnvSchemaImpl();

  @override
  bool get usePathUrlStrategy => _Env.usePathUrlStrategy;

  @override
  String get tmdbAccessToken => _Env.tmdbApiAccessToken;
}

@Envied(useConstantCase: true, obfuscate: true)
abstract class _Env {
  @EnviedField(obfuscate: false, defaultValue: false)
  static const bool usePathUrlStrategy = __Env.usePathUrlStrategy;

  @EnviedField()
  static final String tmdbApiAccessToken = __Env.tmdbApiAccessToken;
}
