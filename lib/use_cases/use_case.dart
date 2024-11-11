import 'dart:async';

export 'dart:async' show FutureOr;

abstract interface class UseCase<ReturnT, ParamsT extends Object> {
  const UseCase();

  FutureOr<ReturnT> execute(ParamsT params);
}
