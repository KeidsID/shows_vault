import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './routes/routes.dart';

final appRouterKey = GlobalKey<NavigatorState>(debugLabel: 'app-router');

final appRouter = GoRouter(
  navigatorKey: appRouterKey,
  initialLocation: const MoviesRoute().location,
  routes: $appRoutes,
);
