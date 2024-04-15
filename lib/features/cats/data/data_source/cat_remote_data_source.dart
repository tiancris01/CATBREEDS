import 'package:cat_breeds/features/cats/data/models/cat_dto.dart';

abstract class CatRemoteDataSource {
  Future<List<CatDTO>> getCats({required int limit});
}
