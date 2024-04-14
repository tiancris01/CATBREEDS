import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_entity.freezed.dart';

@freezed
class CatEntity with _$CatEntity {
  const CatEntity._();
  const factory CatEntity({
    required String lifespan,
    required String country,
    required String imageRef,
    required String catBreed,
    required int intelligence,
    required int adaptability,
    required String description,
  }) = _CatEntity;
}
