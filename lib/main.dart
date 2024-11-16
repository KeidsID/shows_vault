import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart' show usePathUrlStrategy;

import './domain/domain.dart';
import './interfaces/providers/providers.dart';
import './interfaces/router.dart' show appRouter;
import './service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (ServiceLocator.find<ConfigService>().env.usePathUrlStrategy) {
    usePathUrlStrategy();
  }

  await ServiceLocator.init();

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode themeMode = ref.watch(themeModeNotifierProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      themeMode: themeMode,
    );
  }
}
