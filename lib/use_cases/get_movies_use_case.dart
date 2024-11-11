import "package:injectable/injectable.dart";
import "package:shows_vault/domain/dtos/dtos.dart";
import "package:shows_vault/domain/repositories/repositories.dart";
import "./use_case.dart";

@lazySingleton
final class GetMoviesUseCase
    implements UseCase<GetMoviesResponseDto, GetMoviesUseCaseParams> {
  final MoviesRepository _moviesRepository;

  const GetMoviesUseCase(this._moviesRepository);

  @override
  FutureOr<GetMoviesResponseDto> execute(GetMoviesUseCaseParams params) =>
      _moviesRepository.getMovies(params.type);
}

final class GetMoviesUseCaseParams {
  final GetMoviesType type;

  const GetMoviesUseCaseParams(this.type);
}
