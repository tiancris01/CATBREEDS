import 'package:cat_breeds/features/cats/data/data_source/cat_remote_data_soource_impl.dart';
import 'package:cat_breeds/features/cats/data/data_source/cat_remote_data_source.dart';
import 'package:cat_breeds/features/cats/data/repository/cat_repository_impl.dart';
import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:cat_breeds/features/cats/domain/usecase/cat_usecases.dart';
import 'package:cat_breeds/shared/data/remote/network_service.dart';
import 'package:cat_breeds/shared/domain/providers/dio_network_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'breeds_providers.g.dart';

@riverpod
CatRemoteDataSource catDatasourceImpl(
    CatDatasourceImplRef ref, NetworkService networkService) {
  return CatRemoteDataSourceImpl(
    networkService: networkService,
  );
}

@riverpod
CatUsecases catRepositoryImpl(CatRepositoryImplRef ref) {
  final networkService = ref.watch(networkServiceProvider);
  final remoteDataSource = ref.watch(catDatasourceImplProvider(networkService));
  final repository = CatRepositoryImpl(remoteDataSource: remoteDataSource);
  return CatUsecases(repository: repository);
}

@riverpod
Future<List<CatEntity>> catBreeds(CatBreedsRef ref) async {
  final usecase = ref.watch(catRepositoryImplProvider);
  final cat = await usecase.getCats(limit: 5);
  return cat;
}
