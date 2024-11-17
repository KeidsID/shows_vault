import "package:injectable/injectable.dart";
import "package:sv/domain/domain.dart";
import "../use_case.dart";

export "package:sv/domain/domain.dart" show GetMoviesType;

@Singleton(signalsReady: true)
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
