import 'package:cat_breeds/shared/domain/models/response.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  });
}
