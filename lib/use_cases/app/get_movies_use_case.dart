import "package:injectable/injectable.dart";
import "package:shows_vault/domain/dtos/dtos.dart";
import "package:shows_vault/domain/repositories/repositories.dart";
import "../use_case.dart";

export 'package:shows_vault/domain/repositories/repositories.dart'
    show GetMoviesType;

@lazySingleton
final class GetMoviesUseCase
    implements UseCase<Future<GetMoviesResponseDto>, GetMoviesUseCaseParams> {
  final MoviesRepository _moviesRepository;

  const GetMoviesUseCase(this._moviesRepository);

  @override
  Future<GetMoviesResponseDto> execute(GetMoviesUseCaseParams params) =>
      _moviesRepository.getMovies(params.type);
}

final class GetMoviesUseCaseParams {
  final GetMoviesType type;

  const GetMoviesUseCaseParams(this.type);
}
