import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_dto.freezed.dart';
part 'cat_dto.g.dart';

@freezed
class CatDTO with _$CatDTO {
  const CatDTO._();
  const factory CatDTO({
    String? name,
    String? origin,
    String? life_span,
    String? description,
    int? adaptability,
    int? intelligence,
    ImageUrl? image,
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
      image: ImageUrl(url: entity.imageUrl),
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
      imageUrl: image?.url ?? '',
    );
  }
}

String _urlBanner(Object? json) {
  return (json as String) ??
      'https://ih1.redbubble.net/image.4905811447.8675/flat,750x,075,f-pad,750x1000,f8f8f8.jpg';
}

@freezed
class ImageUrl with _$ImageUrl {
  const ImageUrl._();
  const factory ImageUrl({
    @JsonKey(fromJson: _urlBanner) required String url,
  }) = _ImageUrl;

  factory ImageUrl.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlFromJson(json);
}
