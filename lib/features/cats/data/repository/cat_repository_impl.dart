import 'package:cat_breeds/features/cats/data/data_source/cat_remote_data_source.dart';
import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:cat_breeds/features/cats/domain/repository/cat_repository.dart';
import 'package:cat_breeds/shared/domain/models/paginated_response.dart';
import 'package:cat_breeds/shared/exceptions/http_exception.dart';
import 'package:dartz/dartz.dart';

class CatRepositoryImpl implements CatRepository {
  final CatRemoteDataSource _remoteDataSource;

  CatRepositoryImpl({
    required CatRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<AppException, PaginatedResponse>> getCats(
      {required int page}) async {
    return _remoteDataSource.getCats(page: page);
  }

  @override
  Future<Either<AppException, List<CatEntity>>> searchCats(
      {required String query}) async {
    return _remoteDataSource.searchCats(query: query);
  }
}
