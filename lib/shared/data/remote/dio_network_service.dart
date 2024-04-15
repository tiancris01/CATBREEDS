import 'package:cat_breeds/app/environments.dart';
import 'package:cat_breeds/shared/data/remote/network_service.dart';
import 'package:cat_breeds/shared/domain/models/response.dart' as response;
import 'package:dio/dio.dart';

class DioNetworkService extends NetworkService {
  final Dio _dio;
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
  String get baseUrl => Environment.config.baseURL;

  @override
  Map<String, Object> get headers => {
        'content-type': 'application/json',
        'x-api-key': Environment.config.xApiKey,
      };

  @override
  Future<response.Response> get(
      {required String path, Map<String, dynamic>? queryParameters}) async {
    final res = await _dio.get(
      path,
      queryParameters: queryParameters,
    );
    return response.Response(
      data: res.data,
      statusCode: res.statusCode!,
      statusMessage: res.statusMessage,
    );
  }
}
