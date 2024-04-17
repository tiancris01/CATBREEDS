import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breeds_state.freezed.dart';
part 'cat_breeds_state.g.dart';

@freezed
class CatBreedsState with _$CatBreedsState {
  const CatBreedsState._();
  const factory CatBreedsState({
    @Default(0) int page,
    @Default(67) int total,
    @Default(false) bool hasdata,
    @Default(false) bool isLoading,
    @Default("") String errorMessage,
    @Default(const []) List<CatEntity> catBreeds,
    @Default(ConcreteState.initial) ConcreteState state,
  }) = _CatBreedsState;

  factory CatBreedsState.fromJson(Map<String, dynamic> json) =>
      _$CatBreedsStateFromJson(json);
}

enum ConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllProducts
}
