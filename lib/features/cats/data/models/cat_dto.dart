import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_dto.freezed.dart';
part 'cat_dto.g.dart';

@freezed
class CatDTO with _$CatDTO {
  const CatDTO._();
  const factory CatDTO({
    int? rex,
    int? lap,
    int? rare,
    String? id,
    int? indoor,
    String? name,
    int? natural,
    int? grooming,
    int? hairless,
    int? alt_names,
    String? origin,
    int? short_legs,
    String? cfa_url,
    int? energy_level,
    int? intelligence,
    int? social_needs,
    int? vocalisation,
    int? experimental,
    String? life_span,
    int? adaptability,
    int? dog_friendly,
    int? health_issues,
    int? shedding_level,
    String? temperament,
    String? description,
    int? child_friendly,
    int? hypoallergenic,
    WeigthEntity? weight,
    int? suppressed_tail,
    String? country_code,
    int? affection_level,
    String? vetstreet_url,
    String? wikipedia_url,
    String? country_codes,
    int? stranger_friendly,
    String? vcahospitals_url,
    String? reference_image_id,
  }) = _CatDTO;

  factory CatDTO.fromJson(Map<String, dynamic> json) => _$CatDTOFromJson(json);
  CatDTO fromDomain(CatEntity entity) {
    return CatDTO(
      name: entity.catBreed,
      origin: entity.country,
      life_span: entity.lifespan,
      description: entity.description,
      adaptability: entity.adaptability,
      intelligence: entity.intelligence,
      reference_image_id: entity.imageRef,
    );
  }

  CatEntity toDomain() {
    return CatEntity(
      catBreed: name ?? '',
      country: origin ?? '',
      lifespan: life_span ?? '',
      description: description ?? '',
      intelligence: intelligence ?? 0,
      adaptability: adaptability ?? 0,
      imageRef: reference_image_id ?? '',
    );
  }
}

@freezed
class WeigthEntity with _$WeigthEntity {
  const WeigthEntity._();
  const factory WeigthEntity(
    String? metric,
    String? imperial,
  ) = _WeigthEntity;

  factory WeigthEntity.fromJson(Map<String, dynamic> json) =>
      _$WeigthEntityFromJson(json);
}
