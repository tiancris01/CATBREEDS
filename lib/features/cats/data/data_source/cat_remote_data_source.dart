import 'package:cat_breeds/features/cats/data/models/cat_dto.dart';
import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:cat_breeds/shared/domain/models/paginated_response.dart';
import 'package:cat_breeds/shared/exceptions/http_exception.dart';
import 'package:dartz/dartz.dart';

abstract class CatRemoteDataSource {
  Future<Either<AppException, PaginatedResponse>> getCats({required int page});
  Future<Either<AppException, List<CatEntity>>> searchCats(
      {required String query});
}
