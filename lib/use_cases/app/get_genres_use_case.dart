import 'package:injectable/injectable.dart';
import 'package:shows_vault/domain/entities/entities.dart';
import 'package:shows_vault/domain/repositories/repositories.dart';
import '../use_case.dart';

@Singleton(signalsReady: true)
final class GetGenresUseCase
    implements UseCase<Future<List<Genre>>, GetGenresUseCaseParams> {
  final MoviesRepository _moviesRepository;

  const GetGenresUseCase(this._moviesRepository);

  @override
  Future<List<Genre>> execute(GetGenresUseCaseParams params) =>
      _moviesRepository.getGenres();
}

final class GetGenresUseCaseParams {
  const GetGenresUseCaseParams();
}
