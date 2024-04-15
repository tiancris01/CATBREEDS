import 'package:cat_breeds/features/cats/data/data_source/cat_remote_data_source.dart';
import 'package:cat_breeds/features/cats/data/models/cat_dto.dart';
import 'package:cat_breeds/shared/data/remote/network_service.dart';

class CatRemoteDataSourceImpl implements CatRemoteDataSource {
  final NetworkService _networkService;

  CatRemoteDataSourceImpl({
    required NetworkService networkService,
  }) : _networkService = networkService;

  @override
  Future<List<CatDTO>> getCats({required int limit}) async {
    await Future.delayed(const Duration(seconds: 2));
    final response = await _networkService.get(
      path: '/breeds',
      queryParameters: {
        'limit': limit,
      },
    );
    final List<dynamic> responseList = response.data;
    final List<CatDTO> catDTO =
        responseList.map((e) => CatDTO.fromJson(e)).toList();
    return catDTO;
  }
}
