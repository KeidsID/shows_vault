import 'package:injectable/injectable.dart';
import 'package:shows_vault/domain/entities/entities.dart';
import 'package:shows_vault/domain/repositories/repositories.dart';
import './use_case.dart';

@lazySingleton
final class GetGenresUseCase
    implements UseCase<List<Genre>, GetGenresUseCaseParams> {
  final MoviesRepository _moviesRepository;

  const GetGenresUseCase(this._moviesRepository);

  @override
  FutureOr<List<Genre>> execute(GetGenresUseCaseParams params) =>
      _moviesRepository.getGenres();
}

final class GetGenresUseCaseParams {
  const GetGenresUseCaseParams();
}
