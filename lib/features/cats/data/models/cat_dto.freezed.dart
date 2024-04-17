// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatDTO _$CatDTOFromJson(Map<String, dynamic> json) {
  return _CatDTO.fromJson(json);
}

/// @nodoc
mixin _$CatDTO {
  String? get name => throw _privateConstructorUsedError;
  String? get origin => throw _privateConstructorUsedError;
  String? get life_span => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get adaptability => throw _privateConstructorUsedError;
  int? get intelligence => throw _privateConstructorUsedError;
  ImageUrl? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatDTOCopyWith<CatDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatDTOCopyWith<$Res> {
  factory $CatDTOCopyWith(CatDTO value, $Res Function(CatDTO) then) =
      _$CatDTOCopyWithImpl<$Res, CatDTO>;
  @useResult
  $Res call(
      {String? name,
      String? origin,
      String? life_span,
      String? description,
      int? adaptability,
      int? intelligence,
      ImageUrl? image});

  $ImageUrlCopyWith<$Res>? get image;
}

/// @nodoc
class _$CatDTOCopyWithImpl<$Res, $Val extends CatDTO>
    implements $CatDTOCopyWith<$Res> {
  _$CatDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? origin = freezed,
    Object? life_span = freezed,
    Object? description = freezed,
    Object? adaptability = freezed,
    Object? intelligence = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      life_span: freezed == life_span
          ? _value.life_span
          : life_span // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      adaptability: freezed == adaptability
          ? _value.adaptability
          : adaptability // ignore: cast_nullable_to_non_nullable
              as int?,
      intelligence: freezed == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageUrl?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrlCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageUrlCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatDTOImplCopyWith<$Res> implements $CatDTOCopyWith<$Res> {
  factory _$$CatDTOImplCopyWith(
          _$CatDTOImpl value, $Res Function(_$CatDTOImpl) then) =
      __$$CatDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? origin,
      String? life_span,
      String? description,
      int? adaptability,
      int? intelligence,
      ImageUrl? image});

  @override
  $ImageUrlCopyWith<$Res>? get image;
}

/// @nodoc
class __$$CatDTOImplCopyWithImpl<$Res>
    extends _$CatDTOCopyWithImpl<$Res, _$CatDTOImpl>
    implements _$$CatDTOImplCopyWith<$Res> {
  __$$CatDTOImplCopyWithImpl(
      _$CatDTOImpl _value, $Res Function(_$CatDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? origin = freezed,
    Object? life_span = freezed,
    Object? description = freezed,
    Object? adaptability = freezed,
    Object? intelligence = freezed,
    Object? image = freezed,
  }) {
    return _then(_$CatDTOImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      life_span: freezed == life_span
          ? _value.life_span
          : life_span // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      adaptability: freezed == adaptability
          ? _value.adaptability
          : adaptability // ignore: cast_nullable_to_non_nullable
              as int?,
      intelligence: freezed == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageUrl?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatDTOImpl extends _CatDTO {
  const _$CatDTOImpl(
      {this.name,
      this.origin,
      this.life_span,
      this.description,
      this.adaptability,
      this.intelligence,
      this.image})
      : super._();

  factory _$CatDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatDTOImplFromJson(json);

  @override
  final String? name;
  @override
  final String? origin;
  @override
  final String? life_span;
  @override
  final String? description;
  @override
  final int? adaptability;
  @override
  final int? intelligence;
  @override
  final ImageUrl? image;

  @override
  String toString() {
    return 'CatDTO(name: $name, origin: $origin, life_span: $life_span, description: $description, adaptability: $adaptability, intelligence: $intelligence, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.life_span, life_span) ||
                other.life_span == life_span) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.adaptability, adaptability) ||
                other.adaptability == adaptability) &&
            (identical(other.intelligence, intelligence) ||
                other.intelligence == intelligence) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, origin, life_span,
      description, adaptability, intelligence, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatDTOImplCopyWith<_$CatDTOImpl> get copyWith =>
      __$$CatDTOImplCopyWithImpl<_$CatDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatDTOImplToJson(
      this,
    );
  }
}

abstract class _CatDTO extends CatDTO {
  const factory _CatDTO(
      {final String? name,
      final String? origin,
      final String? life_span,
      final String? description,
      final int? adaptability,
      final int? intelligence,
      final ImageUrl? image}) = _$CatDTOImpl;
  const _CatDTO._() : super._();

  factory _CatDTO.fromJson(Map<String, dynamic> json) = _$CatDTOImpl.fromJson;

  @override
  String? get name;
  @override
  String? get origin;
  @override
  String? get life_span;
  @override
  String? get description;
  @override
  int? get adaptability;
  @override
  int? get intelligence;
  @override
  ImageUrl? get image;
  @override
  @JsonKey(ignore: true)
  _$$CatDTOImplCopyWith<_$CatDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageUrl _$ImageUrlFromJson(Map<String, dynamic> json) {
  return _ImageUrl.fromJson(json);
}

/// @nodoc
mixin _$ImageUrl {
  @JsonKey(fromJson: _urlBanner)
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrlCopyWith<ImageUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlCopyWith<$Res> {
  factory $ImageUrlCopyWith(ImageUrl value, $Res Function(ImageUrl) then) =
      _$ImageUrlCopyWithImpl<$Res, ImageUrl>;
  @useResult
  $Res call({@JsonKey(fromJson: _urlBanner) String url});
}

/// @nodoc
class _$ImageUrlCopyWithImpl<$Res, $Val extends ImageUrl>
    implements $ImageUrlCopyWith<$Res> {
  _$ImageUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrlImplCopyWith<$Res>
    implements $ImageUrlCopyWith<$Res> {
  factory _$$ImageUrlImplCopyWith(
          _$ImageUrlImpl value, $Res Function(_$ImageUrlImpl) then) =
      __$$ImageUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(fromJson: _urlBanner) String url});
}

/// @nodoc
class __$$ImageUrlImplCopyWithImpl<$Res>
    extends _$ImageUrlCopyWithImpl<$Res, _$ImageUrlImpl>
    implements _$$ImageUrlImplCopyWith<$Res> {
  __$$ImageUrlImplCopyWithImpl(
      _$ImageUrlImpl _value, $Res Function(_$ImageUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ImageUrlImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUrlImpl extends _ImageUrl {
  const _$ImageUrlImpl({@JsonKey(fromJson: _urlBanner) required this.url})
      : super._();

  factory _$ImageUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrlImplFromJson(json);

  @override
  @JsonKey(fromJson: _urlBanner)
  final String url;

  @override
  String toString() {
    return 'ImageUrl(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrlImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrlImplCopyWith<_$ImageUrlImpl> get copyWith =>
      __$$ImageUrlImplCopyWithImpl<_$ImageUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrlImplToJson(
      this,
    );
  }
}

abstract class _ImageUrl extends ImageUrl {
  const factory _ImageUrl(
          {@JsonKey(fromJson: _urlBanner) required final String url}) =
      _$ImageUrlImpl;
  const _ImageUrl._() : super._();

  factory _ImageUrl.fromJson(Map<String, dynamic> json) =
      _$ImageUrlImpl.fromJson;

  @override
  @JsonKey(fromJson: _urlBanner)
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrlImplCopyWith<_$ImageUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
