import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import "service_locator.config.dart";

/// The actual service locator.
///
/// Defined as private to prevent direct service registration.
final _locator = GetIt.instance;

/// Simple service locator.
///
/// Backed by [GetIt](https://pub.dev/packages/get_it) with
/// [Injectable](https://pub.dev/packages/injectable).
///
/// ```dart
/// import 'package:shows_vault/service_locator.dart';
///
/// Future<void> main() async {
///   await ServiceLocator.init();
///
///   final myService = ServiceLocator.find<MyService>();
/// }
/// ```
abstract final class ServiceLocator {
  /// Get [T] instance from the service locator.
  ///
  /// Don't forget to call [init] first.
  static T find<T extends Object>() => _locator.get<T>();

  /// Initialize [Injectable](https://pub.dev/packages/injectable) services and
  /// check if all registered services are ready to use.
  static Future<void> init() {
    _injectableInit();

    return _locator.allReady();
  }
}

@injectableInit
void _injectableInit() => _locator.init();
