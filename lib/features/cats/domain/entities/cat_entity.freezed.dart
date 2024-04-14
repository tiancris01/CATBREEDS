// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatEntity {
  String get lifespan => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get imageRef => throw _privateConstructorUsedError;
  String get catBreed => throw _privateConstructorUsedError;
  int get intelligence => throw _privateConstructorUsedError;
  int get adaptability => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatEntityCopyWith<CatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatEntityCopyWith<$Res> {
  factory $CatEntityCopyWith(CatEntity value, $Res Function(CatEntity) then) =
      _$CatEntityCopyWithImpl<$Res, CatEntity>;
  @useResult
  $Res call(
      {String lifespan,
      String country,
      String imageRef,
      String catBreed,
      int intelligence,
      int adaptability,
      String description});
}

/// @nodoc
class _$CatEntityCopyWithImpl<$Res, $Val extends CatEntity>
    implements $CatEntityCopyWith<$Res> {
  _$CatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifespan = null,
    Object? country = null,
    Object? imageRef = null,
    Object? catBreed = null,
    Object? intelligence = null,
    Object? adaptability = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      lifespan: null == lifespan
          ? _value.lifespan
          : lifespan // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      imageRef: null == imageRef
          ? _value.imageRef
          : imageRef // ignore: cast_nullable_to_non_nullable
              as String,
      catBreed: null == catBreed
          ? _value.catBreed
          : catBreed // ignore: cast_nullable_to_non_nullable
              as String,
      intelligence: null == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int,
      adaptability: null == adaptability
          ? _value.adaptability
          : adaptability // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatEntityImplCopyWith<$Res>
    implements $CatEntityCopyWith<$Res> {
  factory _$$CatEntityImplCopyWith(
          _$CatEntityImpl value, $Res Function(_$CatEntityImpl) then) =
      __$$CatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lifespan,
      String country,
      String imageRef,
      String catBreed,
      int intelligence,
      int adaptability,
      String description});
}

/// @nodoc
class __$$CatEntityImplCopyWithImpl<$Res>
    extends _$CatEntityCopyWithImpl<$Res, _$CatEntityImpl>
    implements _$$CatEntityImplCopyWith<$Res> {
  __$$CatEntityImplCopyWithImpl(
      _$CatEntityImpl _value, $Res Function(_$CatEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifespan = null,
    Object? country = null,
    Object? imageRef = null,
    Object? catBreed = null,
    Object? intelligence = null,
    Object? adaptability = null,
    Object? description = null,
  }) {
    return _then(_$CatEntityImpl(
      lifespan: null == lifespan
          ? _value.lifespan
          : lifespan // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      imageRef: null == imageRef
          ? _value.imageRef
          : imageRef // ignore: cast_nullable_to_non_nullable
              as String,
      catBreed: null == catBreed
          ? _value.catBreed
          : catBreed // ignore: cast_nullable_to_non_nullable
              as String,
      intelligence: null == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int,
      adaptability: null == adaptability
          ? _value.adaptability
          : adaptability // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CatEntityImpl extends _CatEntity {
  const _$CatEntityImpl(
      {required this.lifespan,
      required this.country,
      required this.imageRef,
      required this.catBreed,
      required this.intelligence,
      required this.adaptability,
      required this.description})
      : super._();

  @override
  final String lifespan;
  @override
  final String country;
  @override
  final String imageRef;
  @override
  final String catBreed;
  @override
  final int intelligence;
  @override
  final int adaptability;
  @override
  final String description;

  @override
  String toString() {
    return 'CatEntity(lifespan: $lifespan, country: $country, imageRef: $imageRef, catBreed: $catBreed, intelligence: $intelligence, adaptability: $adaptability, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatEntityImpl &&
            (identical(other.lifespan, lifespan) ||
                other.lifespan == lifespan) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.imageRef, imageRef) ||
                other.imageRef == imageRef) &&
            (identical(other.catBreed, catBreed) ||
                other.catBreed == catBreed) &&
            (identical(other.intelligence, intelligence) ||
                other.intelligence == intelligence) &&
            (identical(other.adaptability, adaptability) ||
                other.adaptability == adaptability) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lifespan, country, imageRef,
      catBreed, intelligence, adaptability, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatEntityImplCopyWith<_$CatEntityImpl> get copyWith =>
      __$$CatEntityImplCopyWithImpl<_$CatEntityImpl>(this, _$identity);
}

abstract class _CatEntity extends CatEntity {
  const factory _CatEntity(
      {required final String lifespan,
      required final String country,
      required final String imageRef,
      required final String catBreed,
      required final int intelligence,
      required final int adaptability,
      required final String description}) = _$CatEntityImpl;
  const _CatEntity._() : super._();

  @override
  String get lifespan;
  @override
  String get country;
  @override
  String get imageRef;
  @override
  String get catBreed;
  @override
  int get intelligence;
  @override
  int get adaptability;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CatEntityImplCopyWith<_$CatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
