import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';

abstract class CatUsecases {
  Future<List<CatEntity>> getCats();
}
