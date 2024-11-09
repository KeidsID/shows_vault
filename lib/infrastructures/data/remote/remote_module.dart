import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

import 'package:shows_vault/domain/services/services.dart';
import './libs/constants/constants.dart';

@module
abstract class RemoteModule {
  @lazySingleton
  ChopperClient getRemoteClient(ConfigService configService) {
    final tmdbAccessTokenInterceptor = HeadersInterceptor({
      'Authorization': 'Bearer ${configService.env.tmdbAccessToken}',
    });

    return ChopperClient(
      baseUrl: Uri.tryParse(kRemoteApiUrl),
      interceptors: [tmdbAccessTokenInterceptor],
    );
  }
}
