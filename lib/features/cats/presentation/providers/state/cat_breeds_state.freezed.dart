// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_breeds_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatBreedsState _$CatBreedsStateFromJson(Map<String, dynamic> json) {
  return _CatBreedsState.fromJson(json);
}

/// @nodoc
mixin _$CatBreedsState {
  int get page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  bool get hasdata => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<CatEntity> get catBreeds => throw _privateConstructorUsedError;
  ConcreteState get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatBreedsStateCopyWith<CatBreedsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatBreedsStateCopyWith<$Res> {
  factory $CatBreedsStateCopyWith(
          CatBreedsState value, $Res Function(CatBreedsState) then) =
      _$CatBreedsStateCopyWithImpl<$Res, CatBreedsState>;
  @useResult
  $Res call(
      {int page,
      int total,
      bool hasdata,
      bool isLoading,
      String errorMessage,
      List<CatEntity> catBreeds,
      ConcreteState state});
}

/// @nodoc
class _$CatBreedsStateCopyWithImpl<$Res, $Val extends CatBreedsState>
    implements $CatBreedsStateCopyWith<$Res> {
  _$CatBreedsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? total = null,
    Object? hasdata = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? catBreeds = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      hasdata: null == hasdata
          ? _value.hasdata
          : hasdata // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      catBreeds: null == catBreeds
          ? _value.catBreeds
          : catBreeds // ignore: cast_nullable_to_non_nullable
              as List<CatEntity>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ConcreteState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatBreedsStateImplCopyWith<$Res>
    implements $CatBreedsStateCopyWith<$Res> {
  factory _$$CatBreedsStateImplCopyWith(_$CatBreedsStateImpl value,
          $Res Function(_$CatBreedsStateImpl) then) =
      __$$CatBreedsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int total,
      bool hasdata,
      bool isLoading,
      String errorMessage,
      List<CatEntity> catBreeds,
      ConcreteState state});
}

/// @nodoc
class __$$CatBreedsStateImplCopyWithImpl<$Res>
    extends _$CatBreedsStateCopyWithImpl<$Res, _$CatBreedsStateImpl>
    implements _$$CatBreedsStateImplCopyWith<$Res> {
  __$$CatBreedsStateImplCopyWithImpl(
      _$CatBreedsStateImpl _value, $Res Function(_$CatBreedsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? total = null,
    Object? hasdata = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? catBreeds = null,
    Object? state = null,
  }) {
    return _then(_$CatBreedsStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      hasdata: null == hasdata
          ? _value.hasdata
          : hasdata // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      catBreeds: null == catBreeds
          ? _value._catBreeds
          : catBreeds // ignore: cast_nullable_to_non_nullable
              as List<CatEntity>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ConcreteState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatBreedsStateImpl extends _CatBreedsState {
  const _$CatBreedsStateImpl(
      {this.page = 0,
      this.total = 67,
      this.hasdata = false,
      this.isLoading = false,
      this.errorMessage = "",
      final List<CatEntity> catBreeds = const [],
      this.state = ConcreteState.initial})
      : _catBreeds = catBreeds,
        super._();

  factory _$CatBreedsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatBreedsStateImplFromJson(json);

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final bool hasdata;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<CatEntity> _catBreeds;
  @override
  @JsonKey()
  List<CatEntity> get catBreeds {
    if (_catBreeds is EqualUnmodifiableListView) return _catBreeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catBreeds);
  }

  @override
  @JsonKey()
  final ConcreteState state;

  @override
  String toString() {
    return 'CatBreedsState(page: $page, total: $total, hasdata: $hasdata, isLoading: $isLoading, errorMessage: $errorMessage, catBreeds: $catBreeds, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatBreedsStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.hasdata, hasdata) || other.hasdata == hasdata) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._catBreeds, _catBreeds) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, total, hasdata, isLoading,
      errorMessage, const DeepCollectionEquality().hash(_catBreeds), state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatBreedsStateImplCopyWith<_$CatBreedsStateImpl> get copyWith =>
      __$$CatBreedsStateImplCopyWithImpl<_$CatBreedsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatBreedsStateImplToJson(
      this,
    );
  }
}

abstract class _CatBreedsState extends CatBreedsState {
  const factory _CatBreedsState(
      {final int page,
      final int total,
      final bool hasdata,
      final bool isLoading,
      final String errorMessage,
      final List<CatEntity> catBreeds,
      final ConcreteState state}) = _$CatBreedsStateImpl;
  const _CatBreedsState._() : super._();

  factory _CatBreedsState.fromJson(Map<String, dynamic> json) =
      _$CatBreedsStateImpl.fromJson;

  @override
  int get page;
  @override
  int get total;
  @override
  bool get hasdata;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  List<CatEntity> get catBreeds;
  @override
  ConcreteState get state;
  @override
  @JsonKey(ignore: true)
  _$$CatBreedsStateImplCopyWith<_$CatBreedsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
