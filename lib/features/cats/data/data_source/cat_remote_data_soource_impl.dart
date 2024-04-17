import 'package:cat_breeds/features/cats/data/data_source/cat_remote_data_source.dart';
import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:cat_breeds/shared/data/remote/network_service.dart';
import 'package:cat_breeds/shared/domain/models/paginated_response.dart';
import 'package:cat_breeds/shared/exceptions/http_exception.dart';
import 'package:dartz/dartz.dart';

const int PAGE_LIMIT = 5;

class CatRemoteDataSourceImpl implements CatRemoteDataSource {
  final NetworkService _networkService;

  CatRemoteDataSourceImpl({
    required NetworkService networkService,
  }) : _networkService = networkService;

  @override
  Future<Either<AppException, PaginatedResponse>> getCats(
      {required int page}) async {
    final response = await _networkService.get(
      path: '/breeds',
      queryParameters: {
        'limit': PAGE_LIMIT,
        'page': page,
      },
    );
    return response.fold(
      (l) => Left(l),
      (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'fetchPaginatedData',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final paginatedResponse = PaginatedResponse.fromJson(jsonData);
        return Right(paginatedResponse);
      },
    );
  }

  @override
  Future<Either<AppException, List<CatEntity>>> searchCats(
      {required String query}) async {
    final response = await _networkService.get(
      path: '/breeds/search',
      queryParameters: {
        'q': query,
        'attach_image': 1,
      },
    );
    return response.fold(
      (l) => Left(l),
      (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'searchCats',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final List<CatEntity> catEntity =
            (jsonData as List).map((e) => CatEntity.fromJson(e)).toList();
        return Right(catEntity);
      },
    );
  }
}
