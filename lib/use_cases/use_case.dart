abstract interface class UseCase<ReturnT, ParamsT extends Object> {
  const UseCase();

  ReturnT execute(ParamsT params);
}
