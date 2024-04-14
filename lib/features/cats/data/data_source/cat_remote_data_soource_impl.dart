import 'package:cat_breeds/features/cats/data/data_source/cat_remote_data_source.dart';
import 'package:cat_breeds/features/cats/data/models/cat_dto.dart';
import 'package:dio/dio.dart';

class CatRemoteDataSoourceImpl implements CatRemoteDataSource {
  final Dio _dio;

  CatRemoteDataSoourceImpl({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<List<CatDTO>> getCats() async {
    return [];
  }
}
