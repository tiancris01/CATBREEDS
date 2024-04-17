import 'package:cat_breeds/app/types/base_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConfigDev extends BaseConfig {
  @override
  String get baseURL => dotenv.env['BASE_URL'] ?? '';

  @override
  String get xApiKey => dotenv.env['X_API_KEY'] ?? '';
}
