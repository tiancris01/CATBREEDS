import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:cat_breeds/features/cats/domain/repository/cat_repository.dart';

class CatUsecases {
  final CatRepository _repository;

  CatUsecases({
    required CatRepository repository,
  }) : _repository = repository;

  Future<List<CatEntity>> getCats({required int limit}) {
    return _repository.getCats(limit: limit);
  }
}
