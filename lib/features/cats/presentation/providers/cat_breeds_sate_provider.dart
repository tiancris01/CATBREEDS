import 'package:cat_breeds/features/cats/domain/providers/breeds_providers.dart';
import 'package:cat_breeds/features/cats/presentation/providers/state/cat_breeds_notifier.dart';
import 'package:cat_breeds/features/cats/presentation/providers/state/cat_breeds_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final catBreedsNotifierProvider =
    StateNotifierProvider<CatBreedsNotifier, CatBreedsState>(
  (ref) {
    final repository = ref.watch(catRepositoryImplProvider);
    return CatBreedsNotifier(
      catRepository: repository,
    )..fetchCats();
  },
);
