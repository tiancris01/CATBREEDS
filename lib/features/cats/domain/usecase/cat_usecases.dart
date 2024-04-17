import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:cat_breeds/features/cats/domain/repository/cat_repository.dart';
import 'package:cat_breeds/shared/domain/models/paginated_response.dart';
import 'package:cat_breeds/shared/exceptions/http_exception.dart';
import 'package:dartz/dartz.dart';

class CatUsecases {
  final CatRepository _repository;

  CatUsecases({
    required CatRepository repository,
  }) : _repository = repository;

  Future<Either<AppException, PaginatedResponse>> getCats({required int page}) {
    return _repository.getCats(page: page);
  }

  Future<Either<AppException, List<CatEntity>>> searchCats(
      {required String query}) {
    return _repository.searchCats(query: query);
  }
}
