// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatEntityImpl _$$CatEntityImplFromJson(Map<String, dynamic> json) =>
    _$CatEntityImpl(
      lifespan: json['lifespan'] as String,
      country: json['country'] as String,
      imageUrl: json['imageUrl'] as String,
      catBreed: json['catBreed'] as String,
      intelligence: json['intelligence'] as int,
      adaptability: json['adaptability'] as int,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$CatEntityImplToJson(_$CatEntityImpl instance) =>
    <String, dynamic>{
      'lifespan': instance.lifespan,
      'country': instance.country,
      'imageUrl': instance.imageUrl,
      'catBreed': instance.catBreed,
      'intelligence': instance.intelligence,
      'adaptability': instance.adaptability,
      'description': instance.description,
    };
