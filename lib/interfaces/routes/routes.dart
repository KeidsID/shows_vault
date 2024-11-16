/// Root routes defined here since
/// [go_router_builder](https://pub.dev/packages/go_router_builder)
/// decorators can only be defined in one file and [RouteData] classes.
library;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<MoviesRoute>(path: '/movies')
class MoviesRoute extends GoRouteData {
  const MoviesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello AppBar"),
      ),
      body: const Center(
        child: Text("Hello World!"),
      ),
    );
  }
}
