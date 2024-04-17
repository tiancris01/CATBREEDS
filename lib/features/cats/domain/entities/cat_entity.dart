import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_entity.freezed.dart';
part 'cat_entity.g.dart';

@freezed
class CatEntity with _$CatEntity {
  const CatEntity._();
  const factory CatEntity({
    required String lifespan,
    required String country,
    required String imageUrl,
    required String catBreed,
    required int intelligence,
    required int adaptability,
    required String description,
  }) = _CatEntity;

  factory CatEntity.fromJson(Map<String, dynamic> json) =>
      _$CatEntityFromJson(json);
}
