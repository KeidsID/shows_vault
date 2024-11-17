import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_web_plugins/url_strategy.dart" show usePathUrlStrategy;

import "domain/domain.dart";
import "interfaces/providers/providers.dart";
import "interfaces/router.dart";
import "libs/constants/constants.dart";
import "service_locator.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServiceLocator.init();

  final configService = ServiceLocator.find<ConfigService>();
  final EnvSchema(:isUsePathUrlStrategy) = configService.env;

  if (isUsePathUrlStrategy) usePathUrlStrategy();

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode themeMode = ref.watch(themeModeNotifierProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      title: kAppName,
      themeMode: themeMode,
    );
  }
}
