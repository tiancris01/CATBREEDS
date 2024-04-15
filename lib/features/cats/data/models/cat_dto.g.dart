// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatDTOImpl _$$CatDTOImplFromJson(Map<String, dynamic> json) => _$CatDTOImpl(
      name: json['name'] as String?,
      origin: json['origin'] as String?,
      life_span: json['life_span'] as String?,
      description: json['description'] as String?,
      adaptability: json['adaptability'] as int?,
      intelligence: json['intelligence'] as int?,
      image: json['image'] == null
          ? null
          : ImageUrl.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CatDTOImplToJson(_$CatDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'origin': instance.origin,
      'life_span': instance.life_span,
      'description': instance.description,
      'adaptability': instance.adaptability,
      'intelligence': instance.intelligence,
      'image': instance.image,
    };

_$ImageUrlImpl _$$ImageUrlImplFromJson(Map<String, dynamic> json) =>
    _$ImageUrlImpl(
      json['url'] as String?,
    );

Map<String, dynamic> _$$ImageUrlImplToJson(_$ImageUrlImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
