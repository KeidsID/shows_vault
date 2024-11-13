import 'package:flutter/material.dart';

import './interfaces/router.dart';
import './service_locator.dart';

Future<void> main() async {
  await ServiceLocator.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
    );
  }
}
