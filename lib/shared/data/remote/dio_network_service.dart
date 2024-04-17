import 'package:cat_breeds/app/environments.dart';
import 'package:cat_breeds/shared/data/remote/network_service.dart';
import 'package:cat_breeds/shared/domain/models/response.dart' as response;
import 'package:cat_breeds/shared/exceptions/http_exception.dart';
import 'package:cat_breeds/shared/mixins/exception_handler_mixin.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  final Dio _dio;
  final config = Environment.config;
  DioNetworkService({
    required Dio dio,
  }) : _dio = dio {
    _dio.options = dioBaseOptions;
  }

  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
      );
  @override
  String get baseUrl => config.baseURL;

  @override
  Map<String, Object> get headers => {
        'content-type': 'application/json',
        'x-api-key': config.xApiKey,
      };

  @override
  Future<Either<AppException, response.Response>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) {
    final res = handleException(
      () => _dio.get(
        path,
        queryParameters: queryParameters,
      ),
      endpoint: path,
    );
    return res;
  }
}
