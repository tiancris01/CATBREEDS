import 'package:cat_breeds/features/cats/data/models/cat_dto.dart';
import 'package:cat_breeds/features/cats/domain/repository/cat_repository.dart';
import 'package:cat_breeds/features/cats/presentation/providers/state/cat_breeds_state.dart';
import 'package:cat_breeds/shared/domain/models/paginated_response.dart';
import 'package:cat_breeds/shared/exceptions/http_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CatBreedsNotifier extends StateNotifier<CatBreedsState> {
  final CatRepository _catRepository;
  CatBreedsNotifier({required CatRepository catRepository})
      : _catRepository = catRepository,
        super(const CatBreedsState());

  bool get isFetching =>
      state.state != ConcreteState.loading &&
      state.state != ConcreteState.fetchingMore;

  Future<void> fetchCats() async {
    if (isFetching && state.state != ConcreteState.fetchedAllProducts) {
      state = state.copyWith(
        state:
            state.page > 0 ? ConcreteState.fetchingMore : ConcreteState.loading,
        isLoading: true,
      );
      final response = await _catRepository.getCats(page: state.page);
      updateStateFromResponse(response);
    } else {
      state = state.copyWith(
        state: ConcreteState.fetchedAllProducts,
        errorMessage: 'All products fetched',
        isLoading: false,
      );
    }
  }

  void updateStateFromResponse(
      Either<AppException, PaginatedResponse> response) {
    response.fold(
      (failure) {
        state = state.copyWith(
          state: ConcreteState.failure,
          errorMessage: failure.message,
          isLoading: false,
        );
      },
      (data) {
        final catBreedsDTO = data.data.map((e) => CatDTO.fromJson(e)).toList();
        final catBreeds = catBreedsDTO.map((e) => e.toDomain()).toList();
        final totalCats = [...state.catBreeds, ...catBreeds];

        state = state.copyWith(
          page: totalCats.length ~/ 5,
          total: state.total,
          hasdata: true,
          catBreeds: totalCats,
          state: totalCats.length == state.total
              ? ConcreteState.fetchedAllProducts
              : ConcreteState.loaded,
          isLoading: false,
        );
      },
    );
  }
}
