import 'package:cat_breeds/features/cats/data/data_source/cat_remote_data_soource_impl.dart';
import 'package:cat_breeds/features/cats/data/data_source/cat_remote_data_source.dart';
import 'package:cat_breeds/features/cats/data/repository/cat_repository_impl.dart';
import 'package:cat_breeds/features/cats/domain/repository/cat_repository.dart';
import 'package:cat_breeds/shared/data/remote/network_service.dart';
import 'package:cat_breeds/shared/domain/providers/dio_network_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final catDatasourceImplProvider =
    Provider.family<CatRemoteDataSource, NetworkService>(
  (ref, networkService) {
    final networkService = ref.watch(networkServiceProvider);
    return CatRemoteDataSourceImpl(
      networkService: networkService,
    );
  },
);

final catRepositoryImplProvider = Provider<CatRepository>(
  (ref) {
    final networkService = ref.watch(networkServiceProvider);
    final remoteDataSource =
        ref.watch(catDatasourceImplProvider(networkService));
    final repository = CatRepositoryImpl(remoteDataSource: remoteDataSource);
    return repository;
  },
);
