// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatDTOImpl _$$CatDTOImplFromJson(Map<String, dynamic> json) => _$CatDTOImpl(
      rex: json['rex'] as int?,
      lap: json['lap'] as int?,
      rare: json['rare'] as int?,
      id: json['id'] as String?,
      indoor: json['indoor'] as int?,
      name: json['name'] as String?,
      natural: json['natural'] as int?,
      grooming: json['grooming'] as int?,
      hairless: json['hairless'] as int?,
      alt_names: json['alt_names'] as int?,
      origin: json['origin'] as String?,
      short_legs: json['short_legs'] as int?,
      cfa_url: json['cfa_url'] as String?,
      energy_level: json['energy_level'] as int?,
      intelligence: json['intelligence'] as int?,
      social_needs: json['social_needs'] as int?,
      vocalisation: json['vocalisation'] as int?,
      experimental: json['experimental'] as int?,
      life_span: json['life_span'] as String?,
      adaptability: json['adaptability'] as int?,
      dog_friendly: json['dog_friendly'] as int?,
      health_issues: json['health_issues'] as int?,
      shedding_level: json['shedding_level'] as int?,
      temperament: json['temperament'] as String?,
      description: json['description'] as String?,
      child_friendly: json['child_friendly'] as int?,
      hypoallergenic: json['hypoallergenic'] as int?,
      weight: json['weight'] == null
          ? null
          : WeigthEntity.fromJson(json['weight'] as Map<String, dynamic>),
      suppressed_tail: json['suppressed_tail'] as int?,
      country_code: json['country_code'] as String?,
      affection_level: json['affection_level'] as int?,
      vetstreet_url: json['vetstreet_url'] as String?,
      wikipedia_url: json['wikipedia_url'] as String?,
      country_codes: json['country_codes'] as String?,
      stranger_friendly: json['stranger_friendly'] as int?,
      vcahospitals_url: json['vcahospitals_url'] as String?,
      reference_image_id: json['reference_image_id'] as String?,
    );

Map<String, dynamic> _$$CatDTOImplToJson(_$CatDTOImpl instance) =>
    <String, dynamic>{
      'rex': instance.rex,
      'lap': instance.lap,
      'rare': instance.rare,
      'id': instance.id,
      'indoor': instance.indoor,
      'name': instance.name,
      'natural': instance.natural,
      'grooming': instance.grooming,
      'hairless': instance.hairless,
      'alt_names': instance.alt_names,
      'origin': instance.origin,
      'short_legs': instance.short_legs,
      'cfa_url': instance.cfa_url,
      'energy_level': instance.energy_level,
      'intelligence': instance.intelligence,
      'social_needs': instance.social_needs,
      'vocalisation': instance.vocalisation,
      'experimental': instance.experimental,
      'life_span': instance.life_span,
      'adaptability': instance.adaptability,
      'dog_friendly': instance.dog_friendly,
      'health_issues': instance.health_issues,
      'shedding_level': instance.shedding_level,
      'temperament': instance.temperament,
      'description': instance.description,
      'child_friendly': instance.child_friendly,
      'hypoallergenic': instance.hypoallergenic,
      'weight': instance.weight,
      'suppressed_tail': instance.suppressed_tail,
      'country_code': instance.country_code,
      'affection_level': instance.affection_level,
      'vetstreet_url': instance.vetstreet_url,
      'wikipedia_url': instance.wikipedia_url,
      'country_codes': instance.country_codes,
      'stranger_friendly': instance.stranger_friendly,
      'vcahospitals_url': instance.vcahospitals_url,
      'reference_image_id': instance.reference_image_id,
    };

_$WeigthEntityImpl _$$WeigthEntityImplFromJson(Map<String, dynamic> json) =>
    _$WeigthEntityImpl(
      json['metric'] as String?,
      json['imperial'] as String?,
    );

Map<String, dynamic> _$$WeigthEntityImplToJson(_$WeigthEntityImpl instance) =>
    <String, dynamic>{
      'metric': instance.metric,
      'imperial': instance.imperial,
    };
