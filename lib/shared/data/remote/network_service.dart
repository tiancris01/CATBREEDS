import 'package:cat_breeds/shared/domain/models/response.dart' as response;
import 'package:cat_breeds/shared/exceptions/http_exception.dart';
import 'package:dartz/dartz.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  Future<Either<AppException, response.Response>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  });
}
