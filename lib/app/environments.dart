import 'package:cat_breeds/app/config/config_dev.dart';
import 'package:cat_breeds/app/gen/assets.gen.dart';
import 'package:cat_breeds/app/types/base_config.dart';
import 'package:cat_breeds/app/types/env_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static final Environment _instance = Environment._internal();
  factory Environment() => _instance;

  Environment._internal();

  static late BaseConfig config;

  Future<void> initConfig({required EnvType env}) async {
    config = await _getConfig(kDebugMode ? env : EnvType.dev);
  }

  Future<BaseConfig> _getConfig(EnvType environment) async {
    switch (environment) {
      case EnvType.dev:
        await dotenv.load(fileName: AssetsToken.envs.env);
        return ConfigDev();
    }
  }
}
