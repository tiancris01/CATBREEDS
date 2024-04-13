import 'package:cat_breeds/app/environments.dart';
import 'package:cat_breeds/app/types/env_type.dart';
import 'package:cat_breeds/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Environment variables initial configuration
  await Environment().initConfig(env: EnvType.dev);

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
