// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breeds_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatBreedsStateImpl _$$CatBreedsStateImplFromJson(Map<String, dynamic> json) =>
    _$CatBreedsStateImpl(
      page: json['page'] as int? ?? 0,
      total: json['total'] as int? ?? 67,
      hasdata: json['hasdata'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String? ?? "",
      catBreeds: (json['catBreeds'] as List<dynamic>?)
              ?.map((e) => CatEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      state: $enumDecodeNullable(_$ConcreteStateEnumMap, json['state']) ??
          ConcreteState.initial,
    );

Map<String, dynamic> _$$CatBreedsStateImplToJson(
        _$CatBreedsStateImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total': instance.total,
      'hasdata': instance.hasdata,
      'isLoading': instance.isLoading,
      'errorMessage': instance.errorMessage,
      'catBreeds': instance.catBreeds,
      'state': _$ConcreteStateEnumMap[instance.state]!,
    };

const _$ConcreteStateEnumMap = {
  ConcreteState.initial: 'initial',
  ConcreteState.loading: 'loading',
  ConcreteState.loaded: 'loaded',
  ConcreteState.failure: 'failure',
  ConcreteState.fetchingMore: 'fetchingMore',
  ConcreteState.fetchedAllProducts: 'fetchedAllProducts',
};
