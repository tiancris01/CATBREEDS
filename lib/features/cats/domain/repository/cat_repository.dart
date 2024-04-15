import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';

abstract class CatRepository {
  Future<List<CatEntity>> getCats({required int limit});
}
