import 'package:cat_breeds/app/theme/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cat_breeds/app/theme/app_theme.dart';
import 'package:cat_breeds/routes/routes.dart';
import 'package:flutter/material.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(appBrightnessProvider);
    const appTheme = AppTheme();
    return MaterialApp.router(
      title: 'Cat Breeds',
      theme: appTheme.toThemeData(brightness: brightness),
      routerConfig: router,
    );
  }
}
