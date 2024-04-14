import 'package:cat_breeds/features/cats/data/data_source/cat_remote_data_source.dart';
import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:cat_breeds/features/cats/domain/repository/cat_repository.dart';

class CatRepositoryImpl implements CatRepository {
  final CatRemoteDataSource _remoteDataSource;

  CatRepositoryImpl({
    required CatRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  Future<List<CatEntity>> getCats() async {
    final cats = await _remoteDataSource.getCats();
    return cats.map((cat) => cat.toDomain()).toList();
  }
}
